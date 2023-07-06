//
//  Practice_TCAApp.swift
//  Practice_TCA
//
//  Created by 서동운 on 7/5/23.
//

import SwiftUI
import ComposableArchitecture

@main
struct Practice_TCAApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(store: Store(initialState: Feature.State(number: 0), reducer: Feature()))
        }
    }
}
