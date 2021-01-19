//
//  DrawModeControl.swift
//  Doodler
//
//  Created by Dariya Bengraf on 17.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import Foundation
import UIKit

class DrawModeControl: UISegmentedControl {
    
    var mode: DrawMode {
        return DrawMode(rawValue: self.selectedSegmentIndex) ?? DrawMode.oval
    }
    
    convenience init() {
        
        var elements: [String] = []
        for i in DrawMode.allValues() {
            elements.append(i.title())
        }
        self.init(items: elements)
        self.selectedSegmentIndex = 0
        self.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.lightGray
        ], for: .normal)
        
        self.setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.black
        ], for: .selected)
    }
}
