import SwiftUI
import DesignKit

public struct TeamBListItemSharing: View {
    public init() {}
    public var body: some View {
        VStack {
            Text("Team B List Item Screen")
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
                ("TeamBListItem1", "It's from B"),
                ("TeamBListItem2", "Here is B"),
                ("TeamBListItem3", "B is coming over"),
                ("TeamAListItem1", "Oh B is here"),
                ("TeamBListItem2", "B injected through"),
                ("TeamBListItem3", "Passing B along"),
            ]
        )
    }
}
