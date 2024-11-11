import SwiftUI
import DesignKit

public struct TeamBTabListSharing : View {
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
                ("TeamBTabScreen4", "It is from B"),
                ("TeamATabScreen4", "B send some"),
            ]
        )
    }
}

