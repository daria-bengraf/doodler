//
//  CircleDrawView.swift
//  Doodler
//
//  Created by Dariya Bengraf on 12.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//
import Foundation
import UIKit

class CircleDrawView: UIView, TouchableDraw  {
    
    
    var touchViews = [UITouch:CircleView]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        isMultipleTouchEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = .yellow
        isMultipleTouchEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchesHandle(touches)
    }
    
    func buildView() -> ShapeView {
        
        return CircleView()
    }
    
    func clear() {
        for view in touchViews {
            view.value.removeFromSuperview()
        }
    }
    
    
    
}
