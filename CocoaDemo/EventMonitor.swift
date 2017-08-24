//
//  EventMonitor.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa

public final class EventMonitor {
  private var monitor: Any?
  private let mask: NSEvent.EventTypeMask
  private let handler: (NSEvent) -> Void
  
  public init(mask: NSEvent.EventTypeMask, handler: @escaping (NSEvent) -> Void) {
    self.mask = mask
    self.handler = handler
  }
  
  deinit {
    stop()
  }
  
  public func start() {
    if monitor != nil {
      NSEvent.removeMonitor(monitor!)
    }
    
    monitor = NSEvent.addGlobalMonitorForEvents(matching: mask, handler: handler)
  }
  
  public func stop() {
    if monitor != nil {
      NSEvent.removeMonitor(monitor!)
      monitor = nil
    }
  }
}
