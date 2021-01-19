//
//  RandomShapeView.swift
//  Doodler
//
//  Created by Dariya Bengraf on 08.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import Foundation
import UIKit

class RandomShapeView: UIView, ShapeView {
    
    var size: CGFloat = CGFloat.random(in: 50...200)
    var color: UIColor!
    var path: UIBezierPath!
    
    
    override func draw(_ rect: CGRect) {
        let path = randomPath()
        color.setFill()
        path.fill()
    }
    
    required override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0.0, y: 0.0, width: size, height: size))
        backgroundColor = UIColor.clear
        color = UIColor().randomColor()
        isMultipleTouchEnabled = true
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
   func randomPath() -> UIBezierPath {

        let insetRect = self.bounds.insetBy(dx: 0.0, dy: 0.0)

        let shapeType = arc4random() % 3

        if shapeType == 0 {
            return UIBezierPath(roundedRect: insetRect, cornerRadius: 10.0)
        }

        if shapeType == 1 {
            return UIBezierPath(ovalIn: insetRect)
        }
        else {return UIBezierPath(roundedRect: insetRect, cornerRadius: 0.0)}
        
    }
}
