//
//  AppDelegate.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 23/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa
import MenuBuilder

final class AppDelegate: NSObject, NSApplicationDelegate {
  
  weak var window: NSWindow!
  
  private var eventMonitor: EventMonitor!
  
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    
    AppMenu.removeAdditionalMenus()
    NSApplication.shared.mainMenu = AppMenu.main
    
    StatusItemManager.shared.setupStatusItems()
    
    eventMonitor = EventMonitor(mask: [.leftMouseDown, .rightMouseDown], handler: { event in
      StatusbarPopoverManager.shared.hidePopover(nil)
      print(event)
    })
    
    eventMonitor.start()
    eventMonitor.start()
  }
  
  @objc
  func togglePopover(_ sender: Any?) {
    StatusbarPopoverManager.shared.togglePopover(sender)
  }
}

