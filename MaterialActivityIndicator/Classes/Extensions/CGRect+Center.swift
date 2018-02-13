//
//  CGRect+Center.swift
//  MaterialActivityIndicator
//
//  Created by Jans Pavlovs on 13.02.18.
//

import UIKit

extension CGRect {
    
    var center: CGPoint {
        return CGPoint(x: midX, y: midY)
    }
}
