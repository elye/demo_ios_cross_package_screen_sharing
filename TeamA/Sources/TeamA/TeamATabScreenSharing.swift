import SwiftUI
import DesignKit

public struct TeamATabScreenSharing : View {
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
                ("TeamATabScreen1", "Data from A"),
                ("TeamATabScreen2", "A sent over"),
                ("TeamBTabScreen3", "A says 'hello'"),
            ]
        )
    }
}
