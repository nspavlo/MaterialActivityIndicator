//
//  CGSize+Min.swift
//  MaterialActivityIndicator
//
//  Created by Jans Pavlovs on 13.02.18.
//

import UIKit

extension CGSize {
    
    var min: CGFloat {
        return CGFloat.minimum(width, height)
    }
}
