//
//  AppDelegate.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 23/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa
import MenuBuilder

class AppDelegate: NSObject, NSApplicationDelegate {
  
  weak var window: NSWindow!
  
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    AppMenu.removeAdditionalMenus()
    NSApplication.shared.mainMenu = AppMenu.main
  }
  
}

