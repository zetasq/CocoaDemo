//
//  MainWindowController.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa
import SnapKit

final class MainWindowController: NSWindowController {
  init() {
    let window = MainWindow()
    self.windowContentLayoutGuide = window.contentLayoutGuide! as! NSLayoutGuide
    
    super.init(window: window)
    
    window.delegate = self
    mainViewController.windowController = self
    
    setupUI()
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  let windowContentLayoutGuide: NSLayoutGuide
  private let mainViewController = MainViewController()

  private func setupUI() {
    contentViewController = mainViewController
  }
}

// MARK: - NSWindow Delegate
extension MainWindowController: NSWindowDelegate {
  func windowWillClose(_ notification: Notification) {
    NSApplication.shared.terminate(nil)
  }
}
