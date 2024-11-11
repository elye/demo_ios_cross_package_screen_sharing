//
//  TabScreen1.swift
//

import SwiftUI
import DesignKit

struct TabScreen1: View {
    let message: String
    var body: some View {
        VStack {
            Text("Tab Screen 1")
                .frame(maxWidth: .infinity)
                .padding(32)
                .background(Color.white)
                .border(Color.black)

            Text(message)
                .frame(maxWidth: .infinity)
                .padding(32)
                .background(Color.white)
                .border(Color.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(32)
        .background(TeamColor)
    }
}

var TabScreen1Screen: (String) -> DkTabScreen = { data in
        return DkTabScreen(content: AnyView(TabScreen1(message: data)))
    }
