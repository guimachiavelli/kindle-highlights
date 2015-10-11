//
//  QuotesViewController.swift
//  Kindle Highlights Viewer
//
//  Created by guilherme machiavelli on 20/09/2015.
//  Copyright © 2015 guilherme machiavelli. All rights reserved.
//

import Cocoa

class BookViewController : NSViewController, NSTableViewDelegate, NSTableViewDataSource {
    override func viewDidLoad() {
        
    }
    
    override func loadView() {
        let view = NSScrollView(frame: NSRect(x:300, y:0, width:100, height:100))
        view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.view = view
        
        let table = self.table()
        
        view.documentView = table
    }
    
    func table() -> NSTableView {
        let table = NSTableView(frame: NSRect(x:0, y:0, width: 100, height: 200))
        let column = NSTableColumn(identifier: "test")
        column.width = 100
        column.title = "Book name"
        
        table.addTableColumn(column)
        table.setDelegate(self)
        table.setDataSource(self)
        
        return table
    }
    
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return 10
    }
    
    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let identifier = "test\(row)"
        if let result = tableView.makeViewWithIdentifier(identifier, owner: self) {
            return result
        } else {
            let result = NSTextView()
            result.identifier = identifier
            result.string = "book \(row+1)"
            result.editable = false
            result.selectable = false
            result.drawsBackground = false
            return result
        }
        
    }
}