//
//  ContentView.swift
//  MigratoryPoc
//
//  Created by Lukáš Budáč on 31/07/2024.
//

import SwiftUI

let pushUpdater = PushUpdater()

struct ContentView: View {
    var body: some View {
        VStack {
			Button("Start") {
				pushUpdater.start()
			}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
