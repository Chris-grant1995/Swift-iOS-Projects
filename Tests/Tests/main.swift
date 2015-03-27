//
//  main.swift
//  Tests
//
//  Created by Chris Grant on 3/23/15.
//  Copyright (c) 2015 Grant Tests. All rights reserved.
//

import Foundation

println("Hello, World!")
func shell(args: String...) -> Int32 {
    let task = NSTask()
    task.launchPath = "/usr/bin/env"
    task.arguments = args
    task.launch()
    task.waitUntilExit()
    return task.terminationStatus
}

shell("ls")

