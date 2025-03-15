//
//  VentiMinecraftLauncherApp.swift
//  VentiMinecraftLauncher
//
//  Created by YiZhiMCQiu on 2025/3/15.
//

import SwiftUI
import AppKit

@main
struct VentiMinecraftLauncherApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var windowController: NoTitleBarWindowController?
    func applicationDidFinishLaunching(_ notification: Notification) {
        windowController = NoTitleBarWindowController()
    }
}
