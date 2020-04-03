import XCTest
import ProportionalSize

class Tests: XCTestCase {
    
    let sizes: [CGFloat] = [320, 414, 768, 1024, 1112]

    // Examples of device for testing: 2G, 3G, 3GS, 4, 4s, 5, 5s, 5c, SE,
    func test320() {
        let width: CGFloat = 320
        isRightScreen(width)
        
        let value: CGFloat = 200
        tryingToCompare(value, width: width)
    }
    
    // Examples of device for testing: 6, 6s, 7, 8, X, Xs, 11 Pro
    func test375() {
        let width: CGFloat = 375
        isRightScreen(width)
        
        let value: CGFloat = 200
        tryingToCompare(value, width: width)
    }
    
    // Examples of device for testing: 6 Plus, 6s Plus, 7 Plus, 8 Plus, Xr, Xs Max, 11, 11 Pro Max
    func test414() {
        let width: CGFloat = 414
        isRightScreen(width)
        
        let value: CGFloat = 200
        tryingToCompare(value, width: width)
    }
    
    // Examples of device for testing: iPad Pro (9.7-inch), iPad Mini 4, iPad Air 2
    func test768() {
        let width: CGFloat = 768
        isRightScreen(width)
        
        let value: CGFloat = 200
        tryingToCompare(value, width: width)
    }
    
    // Examples of device for testing: iPad Pro (12.9-inch), iPad Pro 12.9-inch (2nd generation)
    func test1024() {
        let width: CGFloat = 1024
        isRightScreen(width)
        
        let value: CGFloat = 200
        tryingToCompare(value, width: width)
    }
    
    // Examples of device for testing: iPad Pro 10.5-inch
    func test1112() {
        let width: CGFloat = 1112
        isRightScreen(width)
        
        let value: CGFloat = 200
        tryingToCompare(value, width: width)
    }
    
    func isRightScreen(_ width: CGFloat) {
        let widthScreen = UIScreen.main.bounds.size.width
        XCTAssertTrue(widthScreen == width, "Must be executed in device \(width) width, but contains \(widthScreen)")
    }
    
    func tryingToCompare(_ value: CGFloat, width: CGFloat) {
        sizes.forEach {
            defaultWidthSize = $0
            XCTAssertTrue(value.proportional == proportional(value: value, screenWidth: width, defaultSize: defaultWidthSize))
        }
    }
    
    func proportional(value: CGFloat, screenWidth: CGFloat, defaultSize: CGFloat) -> CGFloat {
        value * (screenWidth / defaultSize)
    }
}
