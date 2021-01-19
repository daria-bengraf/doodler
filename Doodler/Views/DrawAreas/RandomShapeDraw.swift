
import UIKit

class RandomShapeDraw: UIView, TouchableDraw {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        isMultipleTouchEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.touchesHandle(touches)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func buildView() -> ShapeView {
        return RandomShapeView(frame: CGRect())
    }
}
