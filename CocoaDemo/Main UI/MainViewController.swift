//
//  MainViewController.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa
import SnapKit

final class MainViewController: NSViewController {
  weak var windowController: MainWindowController?
  
  private lazy var centerLabel: NSTextField = {
    let centerLabel = NSTextField(labelWithString: "There is a brown fox!")
    
    centerLabel.cell?.alignment = .center
    centerLabel.lineBreakMode = .byWordWrapping
    
    return centerLabel
  }()
  
  override func loadView() {
    view = NSView()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupUI()
  }
  
  private func setupUI() {
    view.addSubview(centerLabel)
    centerLabel.snp.makeConstraints { (make) in
      make.centerX.equalToSuperview()
      make.top.equalToSuperview()
    }
  }
}
