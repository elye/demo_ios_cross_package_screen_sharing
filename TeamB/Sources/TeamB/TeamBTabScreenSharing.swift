import SwiftUI
import DesignKit

public struct TeamBTabScreenSharing : View {
    public init() {}
    public var body: some View {
        VStack {
            Text("This is Team A Calling Tab Container")
            MyTabScreen()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(TeamColor)
            .padding(0)
    }
}

struct MyTabScreen: View {
    var body: some View {
        DkTabScreenContainer(
            items: [
                ("TeamBTabScreen1", "It is from B"),
                ("TeamBTabScreen2", "B send some"),
                ("TeamATabScreen3", "B injected through"),
            ]
        )
    }
}

