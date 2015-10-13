//
//  BookButton.swift
//  kindle-highlights-viewer
//
//  Created by guilherme machiavelli on 13/10/2015.
//  Copyright © 2015 guilherme machiavelli. All rights reserved.
//

import AppKit

class BookButton: NSButton {
    
    let bookId: String
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(frame: NSRect, bookId: String) {
        self.bookId = bookId
        super.init(frame: frame)
    }
    
    override func mouseDown(theEvent: NSEvent) {
        NSLog(self.bookId)
    }
    
}