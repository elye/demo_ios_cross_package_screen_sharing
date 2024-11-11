import SwiftUI
import DesignKit

struct ListItem3: View {
    let message: String
    var body: some View {
        VStack {
            HStack {
                Text("List Item 3")
                Image(systemName: "heart")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text(message)
            }.frame(maxWidth: .infinity)
                .padding(16)
                .background(Color.white)
                .multilineTextAlignment(.center)
        }.frame(maxWidth: .infinity)
            .padding(16)
            .background(TeamColor)
            .border(Color.black)
    }
}

var ListItem3Item: (String) -> DkListItem = { data in
        return DkListItem(content: AnyView(ListItem3(message: data)))
    }
