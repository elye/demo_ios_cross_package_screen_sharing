//
//  TabScreen3.swift
//

import SwiftUI
import DesignKit

struct TabScreen3: View {
    let message: String
    var body: some View {
        VStack {
            Text(message)
                .frame(maxWidth: .infinity)
                .padding(32)
                .background(Color.white)
                .border(Color.black)
            HStack {
                Text("Tab Screen")
                    .frame(maxWidth: .infinity)
                    .padding(32)
                    .background(Color.white)
                    .border(Color.black)
                Text("Three Here")
                    .frame(maxWidth: .infinity)
                    .padding(32)
                    .background(Color.white)
                    .border(Color.black)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(32)
        .background(TeamColor)
    }
}

var TabScreen3Screen: (String) -> DkTabScreen = { data in
        return DkTabScreen(content: AnyView(TabScreen3(message: data)))
    }
