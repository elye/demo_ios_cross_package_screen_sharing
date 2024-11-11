//
//  ViewRegistration.swift
//

import SwiftUI
import DesignKit

let TeamColor = Color.green

public class RegisterTeamAViews {
    public static func register() {
        TeamViewRegistration.registerScreenPlug(key: "TeamATabScreen1", pair: ("Team A Tab1", TabScreen1Screen))
        TeamViewRegistration.registerScreenPlug(key: "TeamATabScreen2", pair: ("Team A Tab2", TabScreen2Screen))
        TeamViewRegistration.registerScreenPlug(key: "TeamATabScreen3", pair: ("Team A Tab3", TabScreen3Screen))
        TeamViewRegistration.registerScreenPlug(key: "TeamATabScreen4", pair: ("Team A Tab4", TabScreen4Screen))

        TeamViewRegistration.registerItemPlug(key: "TeamAListItem1", function: ListItem1Item)
        TeamViewRegistration.registerItemPlug(key: "TeamAListItem2", function: ListItem2Item)
        TeamViewRegistration.registerItemPlug(key: "TeamAListItem3", function: ListItem3Item)

    }
}
