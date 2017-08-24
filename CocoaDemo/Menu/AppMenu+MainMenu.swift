//
//  MenuBuilder+MainMenu.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 23/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Foundation
import MenuBuilder

extension AppMenu {
  static let main: NSMenu = {
    let mainMenu = NSMenu().withBuildContext { context in
      // MARK: - App Name Menu
      context.addSubmenu(title: Bundle.main.name) { context in
        context.addItem(title: "About \(Bundle.main.name)", action: #selector(NSApplication.orderFrontStandardAboutPanel(_:)))
        
        context.addSeparator()
        
        context.addItem(title: "Preferences…", action: #selector(AppNameMenuActionDispatcher.showPreferencesWindow(_:)), baseKey: ",", keyModifiers: [.command])
        
        context.addSeparator()
        
        context.addSubmenu(title: "Services") { _ in }
        
        context.addItem(title: "Hide \(Bundle.main.name)", action: #selector(NSApplication.hide(_:)), baseKey: "h", keyModifiers: [.command])
        context.addItem(title: "Hide Others", action: #selector(NSApplication.hideOtherApplications(_:)), baseKey: "h", keyModifiers: [.option, .command])
        context.addItem(title: "Show All", action: #selector(NSApplication.unhideAllApplications(_:)))
        context.addItem(title: "Quit \(Bundle.main.name)", action: #selector(NSApplication.terminate(_:)), baseKey: "q", keyModifiers: .command)
      }
      
      // MARK: - File Menu
      context.addSubmenu(title: "File") { context in
        context.addItem(title: "New", action: #selector(NSDocumentController.newDocument(_:)), baseKey: "n", keyModifiers: [.command])
        
        context.addItem(title: "Open…", action: #selector(NSDocumentController.openDocument(_:)), baseKey: "o", keyModifiers: [.command])
        
        context.addSubmenu(title: "Open Recent") { context in
          context.addItem(title: "Clear Menu", action: #selector(NSDocumentController.clearRecentDocuments(_:)))
        }
        
        context.addSeparator()
        
        context.addItem(title: "Close", action: #selector(NSWindow.performClose(_:)), baseKey: "w", keyModifiers: [.command])
        
        context.addItem(title: "Save…", action: #selector(NSDocument.save(_:)), baseKey: "s", keyModifiers: [.command])
        
        context.addItem(title: "Save As…", action: #selector(NSDocument.saveAs(_:)), baseKey: "s", keyModifiers: [.command, .shift])
        
        context.addItem(title: "Revert to Saved", action: #selector(NSDocument.revertToSaved(_:)), baseKey: "r", keyModifiers: [.command])
        
        context.addSeparator()
        
        context.addItem(title: "Page Setup…", action: #selector(NSApplication.runPageLayout(_:)), baseKey: "p", keyModifiers: [.command, .shift])
        
        context.addItem(title: "Print…", action: #selector(NSWindow.printWindow(_:)), baseKey: "p", keyModifiers: [.command])
      }
      
      // MARK: - Edit Menu
      context.addSubmenu(title: "Edit") { context in
        context.addItem(title: "Undo", action: #selector(UndoManager.undo), baseKey: "z", keyModifiers: [.command])
        
        context.addItem(title: "Redo", action: #selector(UndoManager.redo), baseKey: "z", keyModifiers: [.command, .shift])
        
        context.addSeparator()
        
        context.addItem(title: "Cut", action: #selector(NSText.cut(_:)), baseKey: "x", keyModifiers: [.command])
        
        context.addItem(title: "Copy", action: #selector(NSText.copy(_:)), baseKey: "c", keyModifiers: [.command])
        
        context.addItem(title: "Paste", action: #selector(NSText.paste(_:)), baseKey: "v", keyModifiers: [.command])
        
        context.addItem(title: "Paste and Match Style", action: #selector(NSTextView.pasteAsPlainText(_:)), baseKey: "v", keyModifiers: [.command, .option, .shift])
      }
    }
    
    return mainMenu
  }()
}
