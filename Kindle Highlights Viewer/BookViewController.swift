//
//  QuotesViewController.swift
//  Kindle Highlights Viewer
//
//  Created by guilherme machiavelli on 20/09/2015.
//  Copyright © 2015 guilherme machiavelli. All rights reserved.
//

import Cocoa

class BookViewController : NSViewController {
    override func viewDidLoad() {
        
    }
    
    override func loadView() {
        let view = NSView(frame: NSRect(x:300, y:0, width:100, height:100))
        view.wantsLayer = true
        view.layer!.backgroundColor = CGColorCreateGenericRGB(0.0, 0.0, 255.0, 1)
        view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.view = view

        let button = NSButton(frame: CGRect(origin: CGPoint(x: 0, y: 0),
            size: CGSize(width: 150, height: 30)))
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.title = "Book"
        
        self.view.addSubview(button)
        
        self.view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1,
            constant: 0))

        self.view.addConstraint(NSLayoutConstraint(
            item: button,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: CGFloat(appPadding * -1)))

    }
}