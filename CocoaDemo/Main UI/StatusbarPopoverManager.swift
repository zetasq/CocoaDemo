//
//  StatusbarPopoverManager.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa

final class StatusbarPopoverManager {
  static let shared = StatusbarPopoverManager()
  
  private let popover: NSPopover

  private init() {
    popover = NSPopover()
    popover.behavior = .transient
    popover.contentViewController = QuotesViewController()
  }
  
  func togglePopover(_ sender: Any?) {
    if popover.isShown {
      hidePopover(sender)
    } else {
      showPopover()
    }
  }
  
  func showPopover() {
    let button = StatusItemManager.shared.defaultItem.button!
    popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
  }
  
  func hidePopover(_ sender: Any?) {
    popover.performClose(sender)
  }
}
