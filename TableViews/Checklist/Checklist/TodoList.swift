//
//  TodoList.swift
//  Checklist
//
//  Created by Masoud Afghah on 5/2/19.
//  Copyright © 2019 Max Pax. All rights reserved.
//

import Foundation

class TodoList {
    
    var todos: [ChecklistItem] = []
    
    init() {
        let row0Item = ChecklistItem()
        let row1Item = ChecklistItem()
        let row2Item = ChecklistItem()
        let row3Item = ChecklistItem()
        let row4Item = ChecklistItem()
        
        row0Item.text = "Take a jog"
        row1Item.text = "Watch the sunset"
        row2Item.text = "Plant a tree"
        row3Item.text = "Take a picture"
        row4Item.text = "Sing a song"
        
        todos.append(row0Item)
        todos.append(row1Item)
        todos.append(row2Item)
        todos.append(row3Item)
        todos.append(row4Item)
    }//end init
    
}//end class TodoList
