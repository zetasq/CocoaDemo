//
//  AppDelegate+ContextFreeMenuActionDispatcher.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 23/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Foundation

extension AppDelegate: ContextfreeMenuActionDispatcher {
    func showPreferencesWindow(_ sender: Any?) {
        print("\(#function)")
    }
}
