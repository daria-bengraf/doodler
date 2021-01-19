//
//  DrawMode.swift
//  Doodler
//
//  Created by Dariya Bengraf on 17.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import Foundation
import UIKit

enum DrawMode: Int, CaseIterable {
    case oval, draw, random
    
    func title() -> String {
        switch self {
            case .oval: return "Oval"
            case .draw: return "Draw"
            case .random: return "Random"
        }
    }
    
    static func allValues() -> [DrawMode] {
        return DrawMode.allCases.map { $0 }
    }
    
    func view() -> DrawView {
        switch self {
        case .oval:
            return CircleDrawView(frame: CGRect.zero)
        case .draw:
            return LineDrawView(frame: CGRect.zero)
        case .random:
            return RandomShapeDraw(frame: CGRect.zero)
        }
    }
    
}
