import SwiftUI
import DesignKit

public struct TeamATabListSharing : View {
    public init() {}
    public var body: some View {
        VStack {
            Text("This is Team A Calling Tab Container")
            MyTabListScreen()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(TeamColor)
            .padding(0)
    }
}

struct MyTabListScreen: View {
    var body: some View {
        DkTabScreenContainer(
            items: [
                ("TeamATabScreen4", "Coming from A"),
                ("TeamBTabScreen4", "Yes it's A"),
            ]
        )
    }
}
