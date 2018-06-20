//
//  device_height_width.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 20.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import Foundation
import UIKit

extension CGRect {
    var wh: (w: CGFloat, h: CGFloat) {
        return (size.width, size.height)
    }
}
