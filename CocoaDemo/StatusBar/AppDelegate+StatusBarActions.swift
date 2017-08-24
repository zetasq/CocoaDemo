//
//  AppDelegate+StatusBarActions.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa

extension AppDelegate {
  @objc
  func printQuote(_ sender: Any?) {
    let quoteText = "Never put off until tomorrow what you can do the day after tomorrow."
    let quoteAuthor = "Mark Twain"
    
    print("\(quoteText) — \(quoteAuthor)")
  }
}
