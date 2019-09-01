//
//  TestItem.swift
//  test
//
//  Created by Ringo Wathelet on 2019/08/31.
//  Copyright © 2019 Ringo Wathelet. All rights reserved.
//

import Foundation
import SwiftUI

struct TestItem: Identifiable, Equatable {
    
    var id = UUID()
    
    init(text: String) {
        self.text = text
        self.isRead = false
    }
    
    static func == (lhs: TestItem, rhs: TestItem) -> Bool {
        lhs.id == rhs.id
    }
    
    var text: String
    var isRead: Bool
    var read: Bool {
        set { self.isRead = newValue }
        get { self.isRead }
    }
}
