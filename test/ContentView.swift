//
//  ContentView.swift
//  test
//
//  Created by Ringo Wathelet on 2019/08/31.
//  Copyright © 2019 Ringo Wathelet. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
 //   @EnvironmetObject var feed: TestObject
    @ObservedObject var feed = TestObject()
     
    var body: some View {
        NavigationView {
            List(0..<feed.items.count) { i in
                NavigationLink(destination: DetailView(testItem: self.$feed.items[i])) {
                    HStack {
                        Text(self.feed.items[i].text)
                        Text(self.feed.items[i].read.description)
                    }
                }
            }
        }.onAppear(perform: addObjects)
    }
     func addObjects() {
         let strings = ["one","two","three","four","five","six"]
         for s in strings {
             let testItem = TestItem(text: s)
             self.feed.items.append(testItem)
         }
     }
}

