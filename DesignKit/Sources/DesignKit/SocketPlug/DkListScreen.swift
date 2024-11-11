//
//  DkListScreen.swift
//

import SwiftUI

struct ListItem: Hashable {
    let key: String
    let data: String
}

public struct DkListScreen: View {
    public init(items: [(String, String)]) {
        internal_items = items.map { ListItem(key: $0.0, data: $0.1) }
    }
    private var internal_items: [ListItem] = []

    public var body: some View {
        VStack {
            Text("This is List Socket in Design Kit")
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())]) {
                    ForEach(internal_items, id: \.self) { listItem in
                        TeamViewRegistration.retrieveItem(key: listItem.key)(listItem.data)
                    }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(16)
            .background(
                Rectangle().fill(Color.gray)
            )
    }
}

public struct DkListItem: View {
    public init(content: AnyView) { Content = content}
    private let Content: AnyView
    public var body: some View {
        VStack(alignment: .center) {
            Text("List Item Template")
            Content
        }.frame(maxWidth: .infinity)
            .padding(6)
            .background(
                Rectangle().fill(Color.gray)
            )
    }
}

struct DefaultErrorDkListItem: View {
    var body: some View {
        Text("ERROR LIST ITEM")
            .frame(maxWidth: .infinity)
            .background(Color.red)
    }
}
