//
//  Model.swift
//  UIPageViewCustom
//
//  Created by Артем on 3/19/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import Foundation
import UIKit

struct Burgers {
    
    var arrBurgers = [UIImage]()
    
    var namesBurgers = ["1", "2", "3", "4", "5"]
    
    mutating func addBurgers() {
        
        for i in namesBurgers {
            arrBurgers.append(UIImage(named: i)!)
        }
    }
}
