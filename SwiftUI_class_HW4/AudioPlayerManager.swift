import Foundation
import AVFoundation
import Combine

class AudioPlayerManager: ObservableObject {
    static let shared = AudioPlayerManager()

    @Published var isPlaying: Bool = false
    @Published var currentSongTitle: String = "無播放中"

    private var player: AVAudioPlayer?

    func playSong(named name: String) {
        let url = Bundle.main.url(forResource: name, withExtension: "mp3")!
        let loadedPlayer = try! AVAudioPlayer(contentsOf: url)

        loadedPlayer.numberOfLoops = -1
        loadedPlayer.volume = 0.3
        loadedPlayer.play()

        player = loadedPlayer
        isPlaying = true
        currentSongTitle = name
    }

    func togglePlayPause() {
        guard let player = player else { return }
        if player.isPlaying {
            player.pause()
            isPlaying = false
        } else {
            player.play()
            isPlaying = true
        }
    }
}
