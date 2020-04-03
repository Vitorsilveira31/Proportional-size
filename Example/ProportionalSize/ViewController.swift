//
//  ViewController.swift
//  ProportionalSize
//
//  Created by Vitor Silveira on 02/21/2020.
//  Copyright (c) 2020 Vitor Silveira. All rights reserved.
//

import UIKit
import ProportionalSize

class ViewController: UIViewController {

    private lazy var proportionalLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 16.0.proportional)
        return label
    }()
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "image")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private lazy var firstButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Title 1", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.0.proportional)
        return button
    }()
    private lazy var secondButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Title 2", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.0.proportional)
        return button
    }()
    private lazy var thirdButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Title 3", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16.0.proportional)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    private func setupUI() {
        let value: CGFloat = 1000.0
        self.proportionalLabel.text = "Proportional value: \(String(format: "%.2f", value.proportional))\nSize of proportional font: \(String(format: "%.2f", self.proportionalLabel.font.pointSize))"

        setupView()
    }

    private func setupView() {
        self.view.addSubview(self.proportionalLabel)
        self.view.addSubview(self.imageView)
        self.view.addSubview(self.firstButton)
        self.view.addSubview(self.secondButton)
        self.view.addSubview(self.thirdButton)

        setupConstraints()
    }

    private func setupConstraints() {
        setupConstraintLabel()
        setupConstraintImageView()
        setupConstraintButtons()
    }

    private func setupConstraintLabel() {
        let safeArea = self.view.layoutMarginsGuide

        self.proportionalLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50.0.proportional).isActive = true
        self.proportionalLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 50.0.proportional).isActive = true
        self.proportionalLabel.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
    }

    private func setupConstraintImageView() {
        let safeArea = self.view.layoutMarginsGuide

        self.imageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20.0.proportional).isActive = true
        self.imageView.topAnchor.constraint(equalTo: self.proportionalLabel.bottomAnchor, constant: 20.0.proportional).isActive = true
        self.imageView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20.0.proportional).isActive = true
    }

    private func setupConstraintButtons() {
        let safeArea = self.view.layoutMarginsGuide

        self.firstButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20.0.proportional).isActive = true
        self.firstButton.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 20.0.proportional).isActive = true
        self.firstButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20.0.proportional).isActive = true
        self.firstButton.heightAnchor.constraint(equalToConstant: 50.0.proportional).isActive = true

        self.secondButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20.0.proportional).isActive = true
        self.secondButton.topAnchor.constraint(equalTo: self.firstButton.bottomAnchor, constant: 20.0.proportional).isActive = true
        self.secondButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20.0.proportional).isActive = true
        self.secondButton.heightAnchor.constraint(equalToConstant: 50.0.proportional).isActive = true

        self.thirdButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20.0.proportional).isActive = true
        self.thirdButton.topAnchor.constraint(equalTo: self.secondButton.bottomAnchor, constant: 20.0.proportional).isActive = true
        self.thirdButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20.0.proportional).isActive = true
        self.thirdButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20.0.proportional).isActive = true
        self.thirdButton.heightAnchor.constraint(equalToConstant: 50.0.proportional).isActive = true
    }
}
