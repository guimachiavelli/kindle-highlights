//
//  AppDelegate.swift
//  Kindle Highlights Viewer
//
//  Created by guilherme machiavelli on 28/07/2015.
//  Copyright © 2015 guilherme machiavelli. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow?
    var controller: VC?

    func applicationDidFinishLaunching(aNotification: NSNotification) {

        window = NSWindow(
            contentRect: NSRect(x:500, y:500, width:500, height:500),
            styleMask: NSTitledWindowMask|NSClosableWindowMask|NSResizableWindowMask|NSMiniaturizableWindowMask,
            backing: NSBackingStoreType.Buffered,
            `defer`: false)
        
        controller = VC()
        
        if let window = window {
            window.backgroundColor = NSColor.blackColor()
            window.title = appTitle
            window.makeKeyAndOrderFront(nil)
            let content = window.contentView
            let view = controller!.view
            content.addSubview(view)
        }
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {

    }

}