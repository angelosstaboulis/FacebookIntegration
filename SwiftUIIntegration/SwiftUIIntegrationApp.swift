//
//  SwiftUIIntegrationApp.swift
//  SwiftUIIntegration
//
//  Created by Angelos Staboulis on 14/2/24.
//

import SwiftUI
import FacebookCore
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FacebookCore.ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
        return true
    }
}
@main
struct SwiftUIIntegrationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
