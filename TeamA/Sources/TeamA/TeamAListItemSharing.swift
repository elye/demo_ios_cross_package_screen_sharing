import SwiftUI
import DesignKit

public struct TeamAListItemSharing: View {
    public init() {}
    public var body: some View {
        VStack {
            Text("Team A List Item Screen")
            MyListScreen()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(6)
            .background(TeamColor)
            .border(Color.black)
    }
}

struct MyListScreen: View {
    var body: some View {
        DkListScreen(
            items: [
                ("TeamAListItem1", "Source from A"),
                ("TeamAListItem2", "Data from A"),
                ("TeamBListItem3", "A sent something"),
                ("TeamAListItem1", "A injected data"),
                ("TeamAListItem2", "A provided info"),
                ("TeamAListItem3", "This is A's data"),
            ]
        )
    }
}
