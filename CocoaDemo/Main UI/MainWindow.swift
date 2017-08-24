//
//  MainWindow.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa
import SnapKit
final class MainWindow: NSWindow {
  init() {
    super.init(contentRect: NSRect(origin: .zero, size: CGSize(width: 800, height: 600)), styleMask: [.resizable, .miniaturizable, .titled, .closable], backing: .buffered, defer: true)
    
    titlebarAppearsTransparent = true
    minSize = CGSize(width: 800, height: 600)
    isMovableByWindowBackground = true

    center()
  }
  
  deinit {
    
    print("MainWindow deinit")
  }
}
