//
//  AppDelegate.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 23/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa
import MenuBuilder

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSApplication.shared.mainMenu = AppMenu.main
        let a = NSApplication.shared.mainMenu!
        print("DD")
    }

}

