//
//  Extansion+Touchable.swift
//  Doodler
//
//  Created by Dariya Bengraf on 17.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import Foundation
import  UIKit
extension TouchableDraw {
    
    func touchesHandle(_ touches: Set<UITouch>) {
        for touch in touches {
            createViewForTouch(touch: touch)
        }
    }
    
    func createViewForTouch( touch : UITouch ) {
        let newView = buildView()
        newView.center = touch.location(in: self)
        addSubview(newView)
    }
    
    func clear() {
        for view in subviews {
            view.removeFromSuperview()
        }
    }
    
    init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
