//
//  ContentView.swift
//  CrossPackageScreenSharing
//

import SwiftUI
import TeamA
import TeamB

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                        VStack {
                            NavigationLink(destination: TeamATabScreenSharing()) {
                                Text("Team A Tab Screen Sharing")
                            }
                            NavigationLink(destination: TeamBTabScreenSharing()) {
                                Text("Team B Tab Screen Sharing")
                            }
                            NavigationLink(destination: TeamAListItemSharing()) {
                                Text("Team A List Screen Sharing")
                            }
                            NavigationLink(destination: TeamBListItemSharing()) {
                                Text("Team B List Screen Sharing")
                            }
                            NavigationLink(destination: TeamATabListSharing()) {
                                Text("Team A Tab List Screen Sharing")
                            }
                            NavigationLink(destination: TeamBTabListSharing()) {
                                Text("Team B Tab List Screen Sharing")
                            }
                        }
                    }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
