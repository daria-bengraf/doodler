//
//  CGPoint+Extension.swift
//  Shaapes
//
//  Created by Dariya Bengraf on 08.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import Foundation
import UIKit

extension CGPoint {
    
    static func random()->CGPoint {
        return CGPoint(
            x:Int(arc4random()) % 1000,
            y:Int(arc4random()) % 1000
        )
    }
    
    static func random(rangeX:Int, rangeY:Int)->CGPoint {
        return CGPoint(
            x:Int(arc4random()) % rangeX,
            y:Int(arc4random()) % rangeY
        )
    }
}
