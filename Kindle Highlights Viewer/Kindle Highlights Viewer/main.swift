//
//  main.swift
//  Kindle Highlights Viewer
//
//  Created by guilherme machiavelli on 16/08/2015.
//  Copyright © 2015 guilherme machiavelli. All rights reserved.
//

import Foundation
import Cocoa

let delegate = AppDelegate() //alloc main app's delegate class
NSApplication.sharedApplication().delegate = delegate //set as app's delegate
NSApplicationMain(Process.argc, Process.unsafeArgv);  //start of run loop