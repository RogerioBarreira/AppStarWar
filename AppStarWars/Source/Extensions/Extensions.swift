//
//  Extensions.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation
import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
