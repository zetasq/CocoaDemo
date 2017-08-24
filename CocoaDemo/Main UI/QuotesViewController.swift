//
//  QuotesViewController.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa
import SnapKit

class QuotesViewController: NSViewController {
  private lazy var leftButton: NSButton = {
    let leftButton = NSButton(image: NSImage(named: .goLeftTemplate)!, target: self, action: #selector(self.leftButtonTapped))
    
    return leftButton
  }()
  
  private lazy var rightButton: NSButton = {
    let rightButton = NSButton(image: NSImage(named: .goRightTemplate)!, target: self, action: #selector(self.rightButtonTapped))
    
    return rightButton
  }()
  
  private lazy var bottomButton: NSButton = {
    let bottomButton = NSButton(title: "Quit \(Bundle.main.name)", target: self, action: #selector(self.bottomButtonTapped))
    
    return bottomButton
  }()
  
  private lazy var centerLabel: NSTextField = {
    let centerLabel = NSTextField(labelWithString: "dfdasdsa;dsafdasfl;djsfddadf;dafsakdasdakfskdsadasfldsafj")
    
    centerLabel.cell?.alignment = .center
    centerLabel.lineBreakMode = .byWordWrapping
    
    return centerLabel
  }()
  
  private let quotes = Quote.all
  private var quoteIndex = 0 {
    didSet {
      if quoteIndex != oldValue {
        updateQuote()
      }
    }
  }
  
  override func loadView() {
    view = NSView()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupUI()
    updateQuote()
  }
  
  private func setupUI() {
    view.addSubview(leftButton)
    leftButton.snp.makeConstraints { make in
      make.top.equalToSuperview().offset(15)
      make.left.equalToSuperview().offset(15)
    }
    
    view.addSubview(centerLabel)
    centerLabel.setContentHuggingPriority(.defaultLow - 1, for: .horizontal)
    centerLabel.snp.makeConstraints { make in
      make.centerY.equalTo(leftButton)
      make.width.lessThanOrEqualTo(300)
      make.left.equalTo(leftButton.snp.right).offset(10)
    }
    
    view.addSubview(rightButton)
    rightButton.snp.makeConstraints { make in
      make.centerY.equalTo(centerLabel)
      make.left.equalTo(centerLabel.snp.right).offset(10)
      make.right.equalToSuperview().offset(-15)
    }
    
    view.addSubview(bottomButton)
    bottomButton.snp.makeConstraints { make in
      make.centerX.equalTo(centerLabel)
      make.top.equalTo(centerLabel.snp.bottom).offset(10)
      make.bottom.equalToSuperview().offset(-15)
    }
  }
  
  private func updateQuote() {
    centerLabel.stringValue = quotes[quoteIndex].description
  }
  
  @objc
  private func leftButtonTapped() {
    quoteIndex = (quoteIndex - 1 + quotes.count) % quotes.count
  }
  
  @objc
  private func rightButtonTapped() {
    quoteIndex = (quoteIndex + 1) % quotes.count
  }
  
  @objc
  private func bottomButtonTapped() {
    NSApplication.shared.terminate(nil)
  }
}
