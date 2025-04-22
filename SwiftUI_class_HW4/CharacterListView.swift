import SwiftUI
import Foundation
import AVFoundation

struct CharacterListView: View {
    let characters: [JojoCharacter]
    @State private var player: AVAudioPlayer? = nil


    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                Image("golden_wind_background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .brightness(0.3)
                
                Image("jojo_title")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160)
                    .padding(.top, 80)
                    .padding(.leading, 20)
                
                Color(uiColor: .systemBackground)
                    .frame(maxHeight: 84)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .ignoresSafeArea(edges: .bottom)
                
                TabView {
                    ForEach(characters) { character in
                        VStack(spacing: 12) {
                            Image(character.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 420)
                                .clipShape(RoundedRectangle(cornerRadius: 20))

                            Text(character.name)
                                .font(.title)
                                .bold()
                                .foregroundColor(.white)

                            Text("替身：\(character.standName)")
                                .font(.subheadline)
                                .foregroundColor(.white)

                            Text("「\(character.quote)」")
                                .italic()
                                .foregroundColor(.white)

                            if let file = character.voiceFileName {
                                Button("播放語音") {
                                    let url = Bundle.main.url(forResource: file, withExtension: "mp3")!
                                    player = try! AVAudioPlayer(contentsOf: url)
                                    player?.play()
                                }
                                .foregroundColor(.blue)
                            }
                        }
                        .padding()
                        .frame(width: 300, height: 590)
                        .background(
                            Color.black.opacity(0.5)
                                .cornerRadius(20)
                        )
                        .padding()
                    }
                }
                .tabViewStyle(.page)
            }
        }
    }
}




struct CharacterDetailView: View {
    let character: JojoCharacter
    @State private var player: AVAudioPlayer?

    func playQuote() {
        if let fileName = character.voiceFileName,
           let url = Bundle.main.url(forResource: fileName, withExtension: "mp3") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }


    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Image(character.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 600)
                    .clipped()
                    .cornerRadius(20)
                
                Text(character.name).font(.largeTitle).bold()
                Text("替身：\(character.standName)")
                Text("「\(character.quote)」")
                    .italic().padding()
                Button("播放語音") {
                    playQuote()
                }
            }
            .padding()
        }
        .navigationTitle(character.name)
    }
}
