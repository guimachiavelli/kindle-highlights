//
//  BooksViewController.swift
//  Kindle Highlights Viewer
//
//  Created by guilherme machiavelli on 06/09/2015.
//  Copyright © 2015 guilherme machiavelli. All rights reserved.
//

import Cocoa

class KHViewController: NSWindowController {
    var booksViewController: NSSplitViewController?
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(window: NSWindow?) {
        super.init(window: nil)
        
        self.window = NSWindow(
            contentRect: NSRect(x:0, y:0, width: appDimensions["width"]!, height: appDimensions["height"]!),
            styleMask: NSTitledWindowMask|NSClosableWindowMask|NSResizableWindowMask|NSMiniaturizableWindowMask,
            backing: NSBackingStoreType.Buffered,
            `defer`: false)

        self.setupWindow()
        self.setupContentView()
    }
    
    func setupWindow() {
        self.window!.title = appTitle
        self.window!.minSize = NSSize(width: appDimensions["width"]!, height: appDimensions["height"]!)
        self.window!.center()
        self.window!.backgroundColor = NSColor.whiteColor()
        self.window!.makeKeyAndOrderFront(nil)

    }
    
    func setupContentView() {
        self.booksViewController = NSSplitViewController()


        let books = NSSplitViewItem()
        let quotes = NSSplitViewItem()

        books.viewController = BookViewController()
        quotes.viewController = QuotesViewController()

        
        self.booksViewController?.splitView = NSSplitView()
        self.booksViewController?.splitView.vertical = true
        self.booksViewController?.view.translatesAutoresizingMaskIntoConstraints = false;
        
        booksViewController?.view.addConstraint(NSLayoutConstraint(
            item: books.viewController.view,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.GreaterThanOrEqual,
            toItem: self.booksViewController?.view,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.1,
            constant: 0
        ))
        
        booksViewController?.view.addConstraint(NSLayoutConstraint(
            item: quotes.viewController.view,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.GreaterThanOrEqual,
            toItem: self.booksViewController?.view,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0
        ))
        
        self.booksViewController?.insertSplitViewItem(books, atIndex: 0)
        self.booksViewController?.insertSplitViewItem(quotes, atIndex: 1)
        
//        booksViewController?.splitView.adjustSubviews()
        self.window!.contentView = booksViewController?.splitView
        
        print(booksViewController?.view)

    }

    
}
