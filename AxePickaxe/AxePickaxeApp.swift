//
//  AxePickaxeApp.swift
//  AxePickaxe
//
//  Created by Taumu Lu on 2024/3/17.
//

import SwiftUI

@main
struct AxePickaxeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    init() {
        print("应用程序启动了！")
        loadJsFile()
    }
}
