//
//  StatusItemManager.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa
import MenuBuilder

public final class StatusItemManager {
  static let shared = StatusItemManager()
  private init() {}
  
  private(set) var defaultItem: NSStatusItem!
  
  func setupStatusItems() {
    defaultItem = NSStatusItem.item(withStyle: .templateImage(NSImage(named: .init("StatusBarButtonImage"))!))
    
    defaultItem.action = #selector(AppDelegate.togglePopover(_:))
    //    defaultItem = NSStatusItem.item(withStyle: .text("Quote..<Quote"))
    
    //    defaultItem.menu = NSMenu().withBuildContext { context in
    //      context.addItem(title: "Print Quote", action: #selector(AppDelegate.printQuote(_:)))
    //      context.addSeparator()
    //      context.addItem(title: "Quit \(Bundle.main.name)", action: #selector(NSApplication.terminate(_:)), baseKey: "q", keyModifiers: [.command])
    //    }
  }
}
