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
  private var windowController: NSWindowController!
  
  private var eventMonitor: EventMonitor!
  
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    
    AppMenu.removeAdditionalMenus()
    NSApplication.shared.mainMenu = AppMenu.main
    
    StatusItemManager.shared.setupStatusItems()
    
    eventMonitor = EventMonitor(mask: [.leftMouseDown, .rightMouseDown], handler: { event in
      StatusbarPopoverManager.shared.hidePopover(nil)
    })
    
    eventMonitor.start()
    
    windowController = MainWindowController()
    windowController.showWindow(nil)
  }
  
  @objc
  func togglePopover(_ sender: Any?) {
    StatusbarPopoverManager.shared.togglePopover(sender)
  }
}

