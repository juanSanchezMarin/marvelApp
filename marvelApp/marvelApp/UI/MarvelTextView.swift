//
//  MarvelTextView.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 14/10/21.
//

import Foundation
import UIKit

public class MarvelTextView: UITextView {
    @IBInspectable public var fontSize: CGFloat = 12 {
        didSet{
            font = UIFont(name: "Marvel-Regular", size: fontSize)
            setupView()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        setupView()
    }

    private func setupView() {
        textColor = .descriptionColor
        layer.cornerRadius = 10
        layer.borderWidth = 1.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1.0
    }
}
