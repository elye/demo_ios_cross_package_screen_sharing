//
//  TabScreen2.swift
//

import SwiftUI
import DesignKit

struct TabScreen2: View {
    let message: String
    var body: some View {
        HStack {
            Text("Tab Screen 2")
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

var TabScreen2Screen: (String) -> DkTabScreen = { data in
        return DkTabScreen(content: AnyView(TabScreen2(message: data)))
    }
