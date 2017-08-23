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
                
                context.addItem(title: "Preferences…", action: #selector(ContextfreeMenuActionDispatcher.showPreferencesWindow(_:)), baseKey: ",", keyModifiers: [.command])
                
                context.addSeparator()
                
                context.addSubmenu(title: "Services") { _ in }
                
                context.addItem(title: "Hide \(Bundle.main.name)", action: #selector(NSApplication.hide(_:)), baseKey: "h", keyModifiers: [.command])
                context.addItem(title: "Hide Others", action: #selector(NSApplication.hideOtherApplications(_:)), baseKey: "h", keyModifiers: [.option, .command])
                context.addItem(title: "Show All", action: #selector(NSApplication.unhideAllApplications(_:)))
                context.addItem(title: "Quit Test", action: #selector(NSApplication.terminate(_:)), baseKey: "q", keyModifiers: .command)
            }
            
            // MARK: - File Menu
            context.addSubmenu(title: "File") { context in
                context.addItem(title: "New", action: #selector(NSDocumentController.newDocument(_:)), baseKey: "N", keyModifiers: [.command])
                
                context.addItem(title: "About \(Bundle.main.name)", action: #selector(NSApplication.orderFrontStandardAboutPanel(_:)))
                
                context.addSeparator()

            }
        }
        
        return mainMenu
    }()
}
