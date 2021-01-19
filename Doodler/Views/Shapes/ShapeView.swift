//
//  Doodler
//
//  Created by Dariya Bengraf on 01.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import Foundation
import UIKit

protocol ShapeView: UIView {
    func draw(_ rect: CGRect) -> Void
}
