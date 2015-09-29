//
//  AppDelegate.swift
//  Kindle Highlights Viewer
//
//  Created by guilherme machiavelli on 28/07/2015.
//  Copyright © 2015 guilherme machiavelli. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var controller: KHViewController?

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        self.controller = KHViewController(window: nil)
    }

    func applicationWillTerminate(aNotification: NSNotification) {

    }

}