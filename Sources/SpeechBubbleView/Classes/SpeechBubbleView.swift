import UIKit

public enum SpeechBubbleTriangleType: String, CaseIterable {
    case left
    case center
    case right
}

@IBDesignable
public class SpeechBubbleView: UIView {
    
    @IBInspectable public var speechBubbleColor: UIColor = .white
    @IBInspectable public var cornerRadius: CGFloat = 4
    
    @IBInspectable public var lineWidth: CGFloat = 1
    @IBInspectable public var lineColor: UIColor = .lightGray
    
    @IBInspectable public var triangleWidth: CGFloat = 7
    @IBInspectable public var triangleHeight: CGFloat = 6
    @IBInspectable public var triangleSpacing: CGFloat = 10
    
    public var triangleType: SpeechBubbleTriangleType = .left
    @IBInspectable var triangleTypeName: String = SpeechBubbleTriangleType.left.rawValue {
        didSet {
            if let type = SpeechBubbleTriangleType.allCases.first(where: { $0.rawValue == triangleTypeName }) {
                triangleType = type
            } else {
                triangleType = .left
            }
        }
    }
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        self.backgroundColor = .white
        makePath()
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        setNeedsDisplay()
    }
    
    private func makePath() {
        let roundRectPath = UIBezierPath(roundedRect: CGRect(x: lineWidth,
                                                             y: lineWidth,
                                                             width: self.bounds.width - lineWidth * 2,
                                                             height: self.bounds.height - lineWidth * 2 - triangleHeight),
                                         cornerRadius: cornerRadius)
        roundRectPath.close()
        addTriangle(to: roundRectPath, type: triangleType)
        setColor(to: roundRectPath)
    }
    
    private func addTriangle(to rect: UIBezierPath, type: SpeechBubbleTriangleType) {
        let x: CGFloat = {
            switch type {
            case .left:
                return rect.bounds.minX + lineWidth + triangleSpacing
            case .right:
                return rect.bounds.maxX - (lineWidth + triangleWidth + triangleSpacing)
            case .center:
                return rect.bounds.midX - triangleWidth / 2
            }
        }()
        
        let trianglePath = UIBezierPath()
        trianglePath.move(to: CGPoint(x: x,
                                      y: rect.bounds.maxY))
        trianglePath.addLine(to: CGPoint(x: x + triangleWidth / 2,
                                         y: rect.bounds.maxY + triangleHeight))
        trianglePath.addLine(to: CGPoint(x: x + triangleWidth,
                                         y: rect.bounds.maxY))
        trianglePath.close()
        
        rect.append(trianglePath)
    }
    
    private func setColor(to rect: UIBezierPath) {
        lineColor.setStroke()
        rect.lineWidth = lineWidth
        rect.stroke()

        speechBubbleColor.setFill()
        rect.fill()
    }
}
