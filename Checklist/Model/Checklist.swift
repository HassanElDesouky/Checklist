//
//  Checklist.swift
//  Checklist
//
//  Created by Hassan El Desouky on 5/5/18.
//  Copyright © 2018 Hassan El Desouky. All rights reserved.
//

import UIKit

class Checklist: NSObject, Codable {
    
    //MARK:- Properties
    var name = ""
    var items = [ChecklistItem]()
    var iconName = "No Icon"
    
    //MARK:- Init Method
    init(name: String, iconName: String = "No Icon") {
        self.name = name
        self.iconName = iconName
        super.init()
    }
    
    //MARK:- Methods
    func countUncheckedItems() -> Int {
        var count = 0
        for item in items where !item.checked {
            count += 1
        }
        return count
    }
}
