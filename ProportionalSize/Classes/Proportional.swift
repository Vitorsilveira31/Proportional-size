//
//  Proportional.swift
//  ProportionalSize
//
//  Created by Vitor Silveira on 21/02/20.
//  Copyright (c) 2020 Vitor Silveira. All rights reserved.
//

import UIKit

/// Here we should set the default value of the screen width, so we can scale the values according to the size of the user's screen
/// ps.: the default size is 375.0, same as for iPhone 6, 7, 8 ...
public var defaultWidthSize: CGFloat = 375.0

public extension Int {
    var proportinal: CGFloat { CGFloat(self).proportinal }
}

public extension Float {
    var proportinal: CGFloat { CGFloat(self).proportinal }
}

public extension Double {
    var proportinal: CGFloat { CGFloat(self).proportinal }
}

public extension CGFloat {
    var proportinal: CGFloat { self * (UIScreen.main.bounds.width / defaultWidthSize) }
}
