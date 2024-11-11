import SwiftUI
import DesignKit

struct ListItem1: View {
    let message: String
    var body: some View {
        VStack {
            HStack {
                Text("List Item 1:\n" + message)
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }.frame(maxWidth: .infinity)
                .padding(4)
                .background(Color.white)
        }.frame(maxWidth: .infinity)
            .padding(16)
            .background(TeamColor)
            .border(Color.black)
    }
}

var ListItem1Item: (String) -> DkListItem = { data in
        return DkListItem(content: AnyView(ListItem1(message: data)))
    }
