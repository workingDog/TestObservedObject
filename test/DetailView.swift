//
//  detailView.swift
//  test
//
//  Created by Ringo Wathelet on 2019/08/31.
//  Copyright © 2019 Ringo Wathelet. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var testItem: TestItem
    
    var body: some View {
        VStack {
            Text(testItem.text)
            Text(testItem.read.description)
            Button(action: {
                self.testItem.isRead.toggle()
            }) {
                Text("Toggle read")
            }
        }
    }
}

