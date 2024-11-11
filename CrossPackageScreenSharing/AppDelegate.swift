//
//  AppDelegate.swift
//  CrossPackageScreenSharing
//

import UIKit
import TeamA
import TeamB

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        registerTeamsViews()
        return true
    }
    
    func registerTeamsViews() {
        RegisterTeamAViews.register()
        RegisterTeamBViews.register()
    }
}

