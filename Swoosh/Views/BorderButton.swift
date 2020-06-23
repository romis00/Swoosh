//
//  BorderButton.swift
//  Swoosh
//
//  Created by Roman Tuzhilkin on 6/23/20.
//  Copyright © 2020 Roman Tuzhilkin. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
