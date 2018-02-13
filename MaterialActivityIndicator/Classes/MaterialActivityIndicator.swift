//
//  MaterialActivityIndicator.swift
//  MaterialActivityIndicator
//
//  Created by nspavlo on 02/13/2018.
//  Copyright (c) 2018 nspavlo. All rights reserved.
//

import UIKit

public class MaterialActivityIndicatorView: UIView {

    public var color: UIColor = .red {
        didSet {
            indicator.strokeColor = color.cgColor
        }
    }

    public var lineWidth: CGFloat = 2.0 {
        didSet {
            indicator.lineWidth = lineWidth
            setNeedsLayout()
        }
    }

    private let indicator = CAShapeLayer()
    private let animator = MaterialActivityIndicatorAnimator()

    private var isAnimating = false

    convenience init() {
        self.init(frame: .zero)
        self.setup()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    private func setup() {
        indicator.strokeColor = color.cgColor
        indicator.fillColor = nil
        indicator.lineWidth = lineWidth
        layer.addSublayer(indicator)
    }
}

extension MaterialActivityIndicatorView {

    public override var intrinsicContentSize: CGSize {
        return CGSize(width: 24, height: 24)
    }

    override public func layoutSubviews() {
        super.layoutSubviews()

        indicator.frame = bounds

        let diameter = bounds.size.min - indicator.lineWidth
        let path = UIBezierPath(center: bounds.center, radius: diameter / 2)
        indicator.path = path.cgPath
    }
}

extension MaterialActivityIndicatorView {

    public func startAnimating() {
        guard !isAnimating else { return }

        animator.setupAnimation(in: indicator)
        isAnimating = true
    }

    public func stopAnimating() {
        guard isAnimating else { return }

        animator.removeAnimation(from: indicator)
        isAnimating = false
    }
}
