//
//  Protocols+Touchable.swift
//  Shaapes
//
//  Created by Dariya Bengraf on 17.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import Foundation
import UIKit

protocol Touchable  {
    
    init(frame: CGRect)
     func touchesBegan()
     func createViewForTouch()
}

