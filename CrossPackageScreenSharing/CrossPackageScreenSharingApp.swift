//
//  CrossPackageScreenSharingApp.swift
//  CrossPackageScreenSharing
//

import SwiftUI

@main
struct CrossPackageScreenSharingApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
