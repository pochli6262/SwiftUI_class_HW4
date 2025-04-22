import SwiftUI
import Foundation
import AVFoundation



struct SongListView: View {
    let songs: [JojoSong]

    var body: some View {
        NavigationStack {
            ZStack {
                // 背景圖片
                Image("綠黃背景")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .brightness(0.2)

                List(songs) { song in
                    NavigationLink(destination: SongPageView(song: song)) {
                        HStack(spacing: 12) {
                            Image(song.coverImages.first ?? "黃金體驗鎮魂曲")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 12))

                            VStack(alignment: .leading, spacing: 4) {
                                Text(song.title)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                Text(song.description)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                    .lineLimit(1)
                            }

                            Spacer()
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(UIColor.systemBackground))
                                .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                        )
                    }
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets())
                    .padding(.vertical, 8)
                }
                .scrollContentBackground(.hidden)
                .background(Color.clear)
            }
            .navigationTitle("主題曲")
        }
    }
}


struct SongPageView: View {
    let song: JojoSong

    var body: some View {
        VStack {
            Button("播放 \(song.title)") {
                AudioPlayerManager.shared.playSong(named: song.title)
            }

            ForEach(song.coverImages, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
            }
        }
        .navigationTitle(song.title)
    }
}
