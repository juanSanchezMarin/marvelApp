//
//  MarvelTextView.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 14/10/21.
//

import Foundation
import UIKit

public class MarvelLabel: UILabel {
    @IBInspectable public var size: CGFloat {
        get {
            return font.pointSize
        }
        set {
            font = UIFont(name: "Marvel-Regular", size: 12)
        }
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        textColor = .titleColor
        font = UIFont(name: "Marvel-Regular", size: size)
    }
}
