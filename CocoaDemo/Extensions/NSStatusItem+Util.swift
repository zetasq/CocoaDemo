//
//  NSStatusItem+Util.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa

extension NSStatusItem {
  public enum Style {
    case templateImage(NSImage)
    case text(String)
  }
  
  static func item(withStyle style: Style) -> NSStatusItem {
    let item: NSStatusItem
    
    switch style {
    case .templateImage(let image):
      item = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
      item.button!.image = image
    case .text(let title):
      item = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
      item.title = title
    }
    
    return item
  }
}
