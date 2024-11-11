
import SwiftUI
import DesignKit

struct ListItem2: View {
    let message: String
    var body: some View {
        VStack {
            Text(message)
                .frame(maxWidth: .infinity)
                .padding(16)
                .background(Color.white)
            Text("List Item 2")
                .frame(maxWidth: .infinity)
                .padding(16)
                .background(Color.white)
        }.frame(maxWidth: .infinity)
            .padding(16)
            .background(TeamColor)
            .border(Color.black)
    }
}

var ListItem2Item: (String) -> DkListItem = { data in
        return DkListItem(content: AnyView(ListItem2(message: data)))
    }
