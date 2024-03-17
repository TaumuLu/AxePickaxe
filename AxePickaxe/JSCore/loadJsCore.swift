//
//  loadJsCore.swift
//  AxePickaxe
//
//  Created by Taumu Lu on 2024/3/17.
//

import Foundation
import JavaScriptCore

// 定义一个 Swift 函数，在 JavaScript 中可以调用
let swiftFunction: @convention(block) (String) -> Void = { message in
    print("Message from JavaScript: \(message)")
}

// 将 Swift 函数绑定到 JavaScript 的全局对象中
//context?.setObject(unsafeBitCast(swiftFunction, to: AnyObject.self), forKeyedSubscript: "swiftFunction" as NSCopying & NSObjectProtocol)

let rootURL = Bundle.main.bundleURL.deletingLastPathComponent()

func loadJsFile()  {
    // 创建一个 JavaScript 上下文
    let context = JSContext()
    

    print(rootURL)

    // 读取 JavaScript 文件内容
    if let jsSourcePath = Bundle.main.path(forResource: "example", ofType: "js") {
        do {
            let jsSourceContents = try String(contentsOfFile: jsSourcePath)
            
            // 执行 JavaScript 代码
            context?.evaluateScript(jsSourceContents)
        } catch {
            print("Failed to read JavaScript file:", error)
        }
    } else {
        print("JavaScript file not found.")
    }
}

