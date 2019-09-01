//
//  TestObject.swift
//  test
//
//  Created by Ringo Wathelet on 2019/08/31.
//  Copyright © 2019 Ringo Wathelet. All rights reserved.
//

import SwiftUI
import Combine

class TestObject: ObservableObject {
    @Published var items: [TestItem] = []
}
