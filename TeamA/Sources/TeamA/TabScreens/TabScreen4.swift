import SwiftUI
import DesignKit

struct TabScreen4: View {
    let message: String
    var body: some View {
        VStack {
            Text("Tab Screen 4:" + message)
            DkListScreen(
                items: [
                    ("TeamAListItem3", "A sssh"),
                    ("TeamAListItem2", "I am A"),
                    ("TeamBListItem1", "A is about here"),
                    ("TeamAListItem2", "Injected A"),
                    ("TeamAListItem3", "A got through"),
                    ("TeamAListItem2", "I got A!!"),
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

