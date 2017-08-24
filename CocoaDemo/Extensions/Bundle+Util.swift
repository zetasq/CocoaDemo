//
//  Bundle+Util.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 23/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Foundation

extension Bundle {
    var name: String {
        return infoDictionary![kCFBundleNameKey as String] as! String
    }
}
