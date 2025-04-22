import SwiftUI

struct MiniPlayerView: View {
    static let jojoSongs = [
        JojoSong(
            title: "JOJO Golden Wind",
            description: "JOJO Golden Wind",
            coverImages: ["黃金體驗鎮魂曲"]
        ),
        JojoSong(
            title: "Fighting Gold",
            description: "Fighting Gold",
            coverImages: ["fighting gold"]
        ),
        JojoSong(
            title: "Torture Dance",
            description: "Torture Dance",
            coverImages: ["torture dance"]
        ),
        JojoSong(
            title: "Requiem",
            description: "Requiem",
            coverImages: ["Requiem"]
        )
    ]
    
    @EnvironmentObject var audioManager: AudioPlayerManager

    var currentCoverImage: String? {Self.jojoSongs.first(where: {
            $0.title == audioManager.currentSongTitle})?.coverImages.first
    }

    var body: some View {
        HStack(spacing: 12) {
            if let imageName = currentCoverImage {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }

            // 歌曲資訊
            VStack(alignment: .leading, spacing: 2) {
                Text(audioManager.currentSongTitle)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                Text(audioManager.isPlaying ? "播放中" : "已暫停")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()

            // 播放鍵
            Button(action: {
                audioManager.togglePlayPause()
            }) {
                Image(systemName: audioManager.isPlaying ? "pause.fill" : "play.fill")
                    .foregroundColor(.white)
                    .frame(width: 36, height: 36)
                    .background(Color.accentColor)
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .shadow(radius: 6)
        .padding(.horizontal)
    }
}
