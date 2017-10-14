//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Nexion MacBook on 10/13/17.
//  Copyright © 2017 Nexion. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    //
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
