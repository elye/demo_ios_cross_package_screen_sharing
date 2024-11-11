//
//  DkTabContainer.swift
//

import SwiftUI
import SlidingTabView

public struct DkTabScreenContainer : View {
    @State private var tabIndex = 0
    
    public init(items: [(String, String)]) {
        internalItems = items
        tabNames = items.map {
            TeamViewRegistration.retrieveTabScreenTitle(key: $0.0 )}
        print(tabNames)
    }
    private var internalItems: [(String, String)] = []
    private var tabNames: [String] = []
    
    public init() {}
    public var body: some View {
        VStack {
            SlidingTabView(selection: $tabIndex, tabs:tabNames, animation: .default)
            Spacer()
            let value = internalItems[tabIndex]
            
            TeamViewRegistration.retrieveTabScreen(key: value.0)(value.1)
            Spacer()
        }
    }
}

public struct DkTabScreen: View {
    public init(content: AnyView) { Content = content}
    private let Content: AnyView
    public var body: some View {
        VStack(alignment: .center) {
            Text("Screen Plug Template")
            Content
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(6)
            .background(
                Rectangle().fill(Color.gray)
            )
    }
}

struct DefaultErrorDkTabScreen: View {
    var body: some View {
        Text("ERROR TAB SCREEN")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
    }
}
