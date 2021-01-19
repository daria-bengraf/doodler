//
//  Extensions + Touchable.swift
//  Shaapes
//
//  Created by Dariya Bengraf on 17.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import Foundation
import UIKit

extansion Touchable -> VOid UIView  {
    
    
  var touchViews = [UITouch:CircleView]()

  override init(frame: CGRect) {
     super.init(frame: frame)
    
     isMultipleTouchEnabled = true
  }

  required init?(coder aDecoder: NSCoder) {
     super.init(coder: aDecoder)
    backgroundColor = .yellow
     isMultipleTouchEnabled = true
  }

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     for touch in touches {
        createViewForTouch(touch: touch)
     }
  }
    
    func createViewForTouch( touch : UITouch ) {
       let newView = CircleView()
       newView.center = touch.location(in: self)
       addSubview(newView)
        sendSubviewToBack(newView)

    }
