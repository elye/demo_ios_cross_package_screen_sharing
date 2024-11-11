import SwiftUI
import DesignKit

struct TabScreen4: View {
    let message: String
    var body: some View {
        VStack {
            Text("Tab Screen 4:" + message)
            DkListScreen(
                items: [
                    ("TeamBListItem3", "Hello B"),
                    ("TeamBListItem2", "B say Hello"),
                    ("TeamBListItem1", "B is here man"),
                    ("TeamAListItem2", "B B Oh Oh"),
                    ("TeamBListItem3", "Hey B You"),
                    ("TeamBListItem2", "Send B over"),
                ]
            )
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(6)
            .background(TeamColor)
            .border(Color.black)
    }
}

var TabScreen4Screen: (String) -> DkTabScreen = { data in
        return DkTabScreen(content: AnyView(TabScreen4(message: data)))
    }

