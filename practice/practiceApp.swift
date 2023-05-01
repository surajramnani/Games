//
//  practiceApp.swift
//  practice
//
//  Created by Suraj Ramnani on 30/04/23.
//

import SwiftUI

@main
struct practiceApp: App {
    @StateObject private var ModelData = modelData()
    var body: some Scene {
        WindowGroup {
            GamesList()
            .environmentObject(ModelData)
        }
       
    }
}
