import SwiftUI

// Three-tab layout using TabView.
struct TabBarView: View {
    @State private var searchText: String = ""

    // Customize tab bar badge colors using UIKit appearance API.
    init() {
        let item = UITabBarItemAppearance()
        item.normal.badgeBackgroundColor = .systemGreen
        item.selected.badgeBackgroundColor = .systemBlue

        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance = item
        UITabBar.appearance().standardAppearance = appearance
    }

    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                VStack {
                    Text("Home")
                }
            }

            Tab("New", systemImage: "sparkle") {
                Text("New")
            }

            Tab("Pages", systemImage: "music.pages.fill") {
                ScrollView {
                    VStack {
                        ForEach(0..<35, id: \.self) { index in
                            Text("Article \(index + 1)")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(.gray.opacity(0.2))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }
                    .padding()
                }
            }
            .badge("!")

            Tab("Library", systemImage: "music.note.square.stack.fill") {
                Text("Library")
            }
            .badge(2)

            Tab("Search", systemImage: "magnifyingglass", role: .search) {
                NavigationStack {
                    EmptyView()
                        .searchable(text: $searchText, prompt: "Search...")
                }
            }
        }
        .tint(.red)
        .tabViewBottomAccessory {
            MiniPlayerView()
        }
        .tabBarMinimizeBehavior(.onScrollDown)
        .navigationTitle("14 - Tab View")
    }
}

private struct PlayerInfo: View {
    let size: CGSize

    var body: some View {
        HStack(spacing: 12) {
            Image("album")
                .resizable()
                .frame(width: size.width, height: size.height)
                .clipShape(RoundedRectangle(cornerRadius: size.height / 4))

            VStack(alignment: .leading) {
                Text("MIA (feat. Drake)")
                    .font(.system(size: 14, weight: .bold))

                Text("Bad Bunny")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            .lineLimit(1)
        }
    }
}

private struct MiniPlayerView: View {
    var body: some View {
        HStack(spacing: 16) {
            PlayerInfo(size: CGSize(width: 30, height: 30))

            Spacer()

            Group {
                Button(action: {}) {
                    Image(systemName: "play.fill")
                }

                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }
            .foregroundStyle(.primary)
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    TabBarView()
}
