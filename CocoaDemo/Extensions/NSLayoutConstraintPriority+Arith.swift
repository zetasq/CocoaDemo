//
//  NSLayoutConstraintPriority+Arith.swift
//  CocoaDemo
//
//  Created by Zhu Shengqi on 24/08/2017.
//  Copyright © 2017 zetasq. All rights reserved.
//

import Cocoa

func +(lhs: NSLayoutConstraint.Priority, rhs: Int) -> NSLayoutConstraint.Priority {
  return .init(rawValue: lhs.rawValue + Float(rhs))
}

func -(lhs: NSLayoutConstraint.Priority, rhs: Int) -> NSLayoutConstraint.Priority {
  return .init(rawValue: lhs.rawValue - Float(rhs))
}
