//
//  ViewController.swift
//  Kindle Highlights Viewer
//
//  Created by guilherme machiavelli on 28/07/2015.
//  Copyright © 2015 guilherme machiavelli. All rights reserved.
//

import Cocoa

class VC: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = NSView(frame:CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
        
        let subview = NSButton(frame: CGRect(origin: CGPoint(x: 10, y: 10), size: CGSize(width: 100, height: 10)))
        
        subview.title = "wow"
        view.addSubview(subview)
    }
    
    
    
}