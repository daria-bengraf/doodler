//
//  Touchable.swift
//  Doodler
//
//  Created by Dariya Bengraf on 17.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import Foundation
import UIKit

protocol  TouchableDraw: DrawView {
    
    func touchesHandle(_ touches: Set<UITouch>)
    func buildView() -> ShapeView
}
