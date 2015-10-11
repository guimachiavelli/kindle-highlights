//
//  QuotesViewController.swift
//  Kindle Highlights Viewer
//
//  Created by guilherme machiavelli on 20/09/2015.
//  Copyright © 2015 guilherme machiavelli. All rights reserved.
//

import Cocoa

class QuoteViewController : NSViewController {
    override func viewDidLoad() {
        
    }
    
    override func loadView() {
        let aView = NSView(frame: NSRect(x:0, y:0, width:100, height:200));
        let button = NSButton(frame: CGRect(origin: CGPoint(x: 10, y: 10),
            size: CGSize(width: 150, height: 30)))
        
        button.title = "Quote"
        aView.wantsLayer = true
        aView.layer!.backgroundColor = CGColorCreateGenericRGB(200.0, 200.0, 0.0, 0.5)
        
        aView.addSubview(button)
        self.view = aView
    }
}