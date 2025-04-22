import SwiftUI
import Foundation
import AVFoundation


struct StandListView: View {
    let stands: [JojoStand]

    var body: some View {
        NavigationStack {
            ZStack {
                Image("stand_background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .brightness(0.2)

                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(stands) { stand in
                            NavigationLink(destination: StandDetailView(stand: stand)) {
                                HStack(spacing: 16) {
                                    Image(stand.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: 80, maxHeight: 120)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(radius: 4)

                                    VStack(alignment: .leading, spacing: 6) {
                                        Text(stand.name)
                                            .font(.headline)
                                        Text("使用者：\(stand.user)")
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                        Text("能力：\(stand.ability)")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                            .lineLimit(2)
                                    }
                                }
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color(UIColor.systemBackground))
                                        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                                )
                            }
                        }
                    }
                    .padding(.vertical, 30)
                }
            }
            .navigationTitle("替身介紹")
        }
    }
}




struct StandDetailView: View {
    let stand: JojoStand

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 16) {
                Image(stand.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .shadow(radius: 5)

                Text(stand.name)
                    .font(.title)
                    .bold()

                Text("使用者：\(stand.user)")
                    .font(.headline)

                Text("能力介紹")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(stand.fullDescription)
                    .font(.body)
                    .multilineTextAlignment(.leading)


                Text(stand.ability)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)

                Divider()

                VStack(spacing: 12) {
                    Text("能力數值")
                        .font(.headline)

                    // 第一列：名稱
                    HStack {
                        Text("射程距離").frame(maxWidth: .infinity)
                        Text("成長性").frame(maxWidth: .infinity)
                        Text("持續力").frame(maxWidth: .infinity)
                    }
                    .font(.caption)
                    .foregroundColor(.secondary)

                    // 第一列：數值
                    HStack {
                        Text(stand.stats["射程距離"]!).bold().frame(maxWidth: .infinity)
                        Text(stand.stats["成長性"]!).bold().frame(maxWidth: .infinity)
                        Text(stand.stats["持續力"]!).bold().frame(maxWidth: .infinity)
                    }
                    .font(.title3)

                    // 第二列：名稱
                    HStack {
                        Text("破壞力").frame(maxWidth: .infinity)
                        Text("精密動作性").frame(maxWidth: .infinity)
                        Text("速度").frame(maxWidth: .infinity)
                    }
                    .font(.caption)
                    .foregroundColor(.secondary)

                    // 第二列：數值
                    HStack {
                        Text(stand.stats["破壞力"]!).bold().frame(maxWidth: .infinity)
                        Text(stand.stats["精密動作性"]!).bold().frame(maxWidth: .infinity)
                        Text(stand.stats["速度"]!).bold().frame(maxWidth: .infinity)
                    }
                    .font(.title3)
                }
                .padding(.horizontal)

                Spacer(minLength: 40)
            }
        }
        .navigationTitle(stand.name)
    }
}
