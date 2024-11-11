//
//  ViewRegistration.swift
//

import SwiftUI
import DesignKit

let TeamColor = Color.yellow

public class RegisterTeamBViews {
    public static func register() {
        TeamViewRegistration.registerScreenPlug(key: "TeamBTabScreen1", pair: ("Team B Tab1", TabScreen1Screen))
        TeamViewRegistration.registerScreenPlug(key: "TeamBTabScreen2", pair: ("Team B Tab2", TabScreen2Screen))
        TeamViewRegistration.registerScreenPlug(key: "TeamBTabScreen3", pair: ("Team B Tab3", TabScreen3Screen))
        TeamViewRegistration.registerScreenPlug(key: "TeamBTabScreen4", pair: ("Team B Tab4", TabScreen4Screen))
        
        TeamViewRegistration.registerItemPlug(key: "TeamBListItem1", function: ListItem1Item)
        TeamViewRegistration.registerItemPlug(key: "TeamBListItem2", function: ListItem2Item)
        TeamViewRegistration.registerItemPlug(key: "TeamBListItem3", function: ListItem3Item)


    }
}
