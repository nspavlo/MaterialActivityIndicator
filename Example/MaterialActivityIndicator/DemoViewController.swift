//
//  DemoViewController.swift
//  MaterialActivityIndicator
//
//  Created by nspavlo on 02/13/2018.
//  Copyright (c) 2018 nspavlo. All rights reserved.
//

import UIKit
import MaterialActivityIndicator

class DemoViewController: UIViewController {

    private let indicator = MaterialActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupActivityIndicatorView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        indicator.startAnimating()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        indicator.stopAnimating()
    }
}

extension DemoViewController {

    private func setupActivityIndicatorView() {
        view.addSubview(indicator)
        setupActivityIndicatorViewConstraints()
    }

    private func setupActivityIndicatorViewConstraints() {
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        indicator.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
