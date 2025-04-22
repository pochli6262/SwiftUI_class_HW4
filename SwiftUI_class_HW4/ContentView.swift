import SwiftUI
import Foundation

struct JojoCharacter: Identifiable {
    var id: String { name }
    let name: String
    let standName: String
    let description: String
    let quote: String
    let imageName: String
    let voiceFileName: String?
    let part: String
}

struct JojoStand: Identifiable {
    var id: String { name }
    let name: String
    let ability: String
    let user: String
    let stats: [String: String]
    let imageName: String
    let fullDescription: String
}

struct JojoSong: Identifiable {
    var id: String { title }
    let title: String
    let description: String
    let coverImages: [String]
}

let jojoCharacters = [
    JojoCharacter(name: "喬魯諾・喬巴拿", standName: "黃金體驗 / 黃金體驗鎮魂曲", description: "第五部的主角，有著DIO與喬斯達家族的血統，目標是成為流氓巨星。故事最後成為熱情的新首領。", quote: "我有一個夢想。", imageName: "Giorno Giovanna", voiceFileName: "kono_giorno_giovanna", part: "Part 5"),
    JojoCharacter(name: "布加拉提", standName: "鋼鍊手指", description: "布加拉提小隊的領導者，擁有拉鍊能力，忠誠可靠。為了保護特莉休叛變組織。", quote: "Arrivederci...", imageName: "Bruno Bucciarati", voiceFileName: "sticki_finger_sfx",part: "Part 5"),
    JojoCharacter(name: "雷奧・阿帕基", standName: "憂鬱藍調", description: "布加拉提的部下，重視忠誠與紀律。替身可播放過去行動，是追蹤好手。", quote: "記住這張臉……！", imageName: "Leone Abbacchio", voiceFileName: "moody_blues_stand", part: "Part 5"),
    JojoCharacter(name: "葛德・米斯達", standName: "性感手槍", description: "個性直率的狙擊手，擅長射擊，替身為六個有個性的子彈小人。", quote: "4是不吉利的數字！", imageName: "Guido Mista", voiceFileName: "sekkusu_pisutoruzu", part: "Part 5"),
    JojoCharacter(name: "納蘭迦・吉爾各", standName: "史密斯飛船", description: "天真但忠誠的少年，駕駛玩具飛機型替身進行攻擊與偵查。", quote: "Volare via！", imageName: "Narancia Ghirga", voiceFileName: "volare_via", part: "Part 5"),
    JojoCharacter(name: "潘納科達・福葛", standName: "紫煙", description: "年輕天才，個性暴躁，替身可釋放致命病毒。", quote: "你會在30秒內死去。", imageName: "Pannacotta Fugo", voiceFileName: "fugo_purple_haze", part: "Part 5"),
    JojoCharacter(name: "特莉休・烏納", standName: "辣妹", description: "老闆的女兒，逐漸成長並覺醒替身能力，成為小隊一員。", quote: "Spicy Girl！", imageName: "Trish Una", voiceFileName: "spice_girl", part: "Part 5")
]

let jojoStands = [
    JojoStand(
        name: "黃金體驗",
        ability: "賦與生命、感官暴走、傷口治療",
        user: "喬魯諾・喬巴拿",
        stats: [
            "破壞力": "C", "速度": "A", "射程距離": "C",
            "持續力": "D", "精密動作性": "C", "成長性": "A"
        ],
        imageName: "golden_experience",
        fullDescription: """
近距離力量型，人型替身。
將觸摸到的物體賦予生命（長出植物、變成生物等），也可以利用該能力變出身體器官用來修復、治療身體。拳頭擊中人類時，會使對方的感官暴走，思考超前奔馳，使之感覺一切動作都呈現慢動作。
名字來源於音樂家「Prince」的樂隊專輯《The Golden Experience》。
"""
    ),

    JojoStand(
        name: "黃金體驗鎮魂曲",
        ability: "歸零一切結果、擁有自我意識",
        user: "喬魯諾・喬巴拿",
        stats: [
            "破壞力": "未知", "速度": "未知", "射程距離": "未知",
            "持續力": "未知", "精密動作性": "未知", "成長性": "未知"
        ],
        imageName: "golden_requiem",
        fullDescription: """
未知，人型替身。有自我意識。黃金體驗獲得「蟲箭」後覺醒的能力。
使對方永遠抵達不了真實，任何對黃金體驗鎮魂曲的攻擊都不再有效。其能力也包含到達不了死亡的真實（生不如死）。
名字來源於音樂家「Prince」的樂隊專輯《The Golden Experience》。
"""
    ),

    JojoStand(
        name: "鋼鍊手指",
        ability: "可在物體上開關拉鍊，分離或拼接物體",
        user: "布加拉提",
        stats: [
            "破壞力": "A", "速度": "A", "射程距離": "C",
            "持續力": "D", "精密動作性": "C", "成長性": "D"
        ],
        imageName: "sticky_fingers",
        fullDescription: """
近距離力量型，人型替身。
在擊打到的物體上製造拉鍊，利用拉鍊滑行、飛簷走壁與穿梭空間、將損壞的物體用拉鍊接上修復，甚至可以分解敵人的身體。
替身名出自英國搖滾樂團「The Rolling Stones」1971年的專輯《Sticky Fingers》。
"""
    ),

    JojoStand(
        name: "憂鬱藍調",
        ability: "重播過去行動，具有追蹤與擬態能力",
        user: "雷奧・阿帕基",
        stats: [
            "破壞力": "C", "速度": "C", "射程距離": "A",
            "持續力": "A", "精密動作性": "C", "成長性": "C"
        ],
        imageName: "moody_blues",
        fullDescription: """
近距離力量型，人型替身。
可以在地點上選擇時間點進行「回放」，憂鬱藍調會變為當時的人或物體並模仿當時所發生的事，可以自由調整撥放速度、暫停、倒帶等，但無法撥放出對方使出的替身能力。
替身名出自英國搖滾樂團「The Moody Blues」。
"""
    ),

    JojoStand(
        name: "性感手槍",
        ability: "六個小子彈人，能操控子彈軌道",
        user: "葛德・米斯達",
        stats: [
            "破壞力": "E", "速度": "C", "射程距離": "B",
            "持續力": "A", "精密動作性": "A", "成長性": "A"
        ],
        imageName: "sex_pistols",
        fullDescription: """
遠距離操作型、複數型，一群細小的人型替身。有自我意識。
由6個個體組成，各別有獨特的性格且可以各自行動。能搭坐在子彈上隨子彈一同射出，利用踢擊改變彈道或加大強度。
替身名出自英國搖滾樂團「Sex Pistols」。
"""
    ),

    JojoStand(
        name: "史密斯飛船",
        ability: "小型飛機型攻擊替身，附雷達功能",
        user: "納蘭迦・吉爾各",
        stats: [
            "破壞力": "B", "速度": "B", "射程距離": "B",
            "持續力": "C", "精密動作性": "E", "成長性": "C"
        ],
        imageName: "aerosmith",
        fullDescription: """
遠距離操作型，一架玩具大小的戰鬥機。
能大範圍使用機槍子彈掃射目標、投擲爆破範圍廣的小型炸彈。本體擁有二氧化碳雷達，可以偵測替身周邊排放二氧化碳的目標。
替身名出自美國硬式搖滾樂團「Aerosmith」。
"""
    ),

    JojoStand(
        name: "紫煙",
        ability: "釋放致死病毒，連本體也會感染",
        user: "潘納科達・福葛",
        stats: [
            "破壞力": "A", "速度": "B", "射程距離": "C",
            "持續力": "E", "精密動作性": "E", "成長性": "B"
        ],
        imageName: "purple_haze",
        fullDescription: """
近距離力量型，人型替身。難以控制。
在揮拳時會打破手上的膠囊，釋放殺人病毒，接觸病毒的生物會在30秒內致死。病毒害怕日光，正常暴露在外的病毒若於太陽照射下數十秒便會被消滅。
替身名出自英國吉他大師「Jimi Hendrix」的歌曲《Purple Haze》。
"""
    ),

    JojoStand(
        name: "辣妹",
        ability: "賦予物體柔軟性，可吸收衝擊",
        user: "特莉休・烏納",
        stats: [
            "破壞力": "A", "速度": "A", "射程距離": "C",
            "持續力": "B", "精密動作性": "D", "成長性": "C"
        ],
        imageName: "spice_girl",
        fullDescription: """
近距離力量型，人型替身。
將擊打到的物體變成橡膠，即使是岩石和機械也能如橡膠般延展、富有彈性，橡膠化後的物體在恢復後也保持原本的功能。
替身名出自英國流行樂女團「Spice Girls」。
"""
    )
]


let jojoSongs = [
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
    )
]


struct ContentView: View {
    @StateObject private var audioManager = AudioPlayerManager.shared

    var body: some View {
        ZStack {
            TabView {
                Tab("角色", systemImage: "person.3") {
                    CharacterListView(characters: jojoCharacters)
                }
                
                Tab("替身", systemImage: "sparkles") {
                    StandListView(stands: jojoStands)
                }

                Tab("主題曲", systemImage: "music.note") {
                    SongListView(songs: jojoSongs)
                }
            }
            .tabViewStyle(.automatic)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Color(uiColor: .systemBackground), for: .tabBar)
            
            
            VStack {
                Spacer()
                MiniPlayerView()
                    .environmentObject(audioManager)
                    .padding(.bottom, 50)
            }
        }
    }
}


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
                            Color.black.opacity(0.4)
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



import AVFoundation

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
                
                Color(uiColor: .systemBackground)
                    .frame(maxHeight: 84)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .ignoresSafeArea(edges: .bottom)

                VStack(spacing: 0) {
                    ZStack(alignment: .leading) {
                        Color(.systemGray6)
                            .opacity(0.6)
                            .frame(height: 80)
                            .ignoresSafeArea(edges: .top)

                        Text("替身圖鑑")
                            .font(.largeTitle.bold())
                            .padding(.leading, 20)
                            .padding(.top, 40)
                    }

                    NavigationStack {
                        List(stands) { stand in
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
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                            .padding(.horizontal, 12)
                            .padding(.vertical, 4)
                        }
                        .scrollContentBackground(.hidden)
                        .background(Color.clear)
                    }
                }
            }
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
                        Text(stand.stats["射程距離"] ?? "？").bold().frame(maxWidth: .infinity)
                        Text(stand.stats["成長性"] ?? "？").bold().frame(maxWidth: .infinity)
                        Text(stand.stats["持續力"] ?? "？").bold().frame(maxWidth: .infinity)
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
                        Text(stand.stats["破壞力"] ?? "？").bold().frame(maxWidth: .infinity)
                        Text(stand.stats["精密動作性"] ?? "？").bold().frame(maxWidth: .infinity)
                        Text(stand.stats["速度"] ?? "？").bold().frame(maxWidth: .infinity)
                    }
                    .font(.title3)
                }
                .padding(.horizontal)

                Spacer(minLength: 40)
            }
            .padding()
        }
        .navigationTitle(stand.name)
    }
}

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

                // 底部遮色背景
                Color(uiColor: .systemBackground)
                    .frame(maxHeight: 84)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .ignoresSafeArea(edges: .bottom)

                VStack(spacing: 0) {
                    // 頂部灰色區 + 標題
                    ZStack(alignment: .leading) {
                        Color(.systemGray6)
                            .opacity(0.6)
                            .frame(height: 80)
                            .ignoresSafeArea(edges: .top)

                        Text("主題曲介紹")
                            .font(.largeTitle.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 60)
                            .padding(.top, 40)
                    }

                    // 清單內容
                    NavigationStack {
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
                            .padding(.horizontal, 20)
                            .padding(.vertical, 8)
                        }
                        .scrollContentBackground(.hidden)
                        .background(Color.clear)
                        .padding(.horizontal, 30)
                    }
                }
            }
        }
    }
}


struct SongPageView: View {
    let song: JojoSong

    var body: some View {
        VStack {
            Button("播放 \(song.title)") {
                print("🎵 播放音樂：\(song.title)")
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




#Preview {
    ContentView()
}
