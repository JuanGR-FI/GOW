//
//  LabelExtension.swift
//  GOW
//
//  Created by Juan Andrés Cervantes Guati Rojo on 11/08/23.
//

import Foundation
import UIKit

extension UILabel {
    func scale() {
        let myFont = UIFont(name: "CGF Locust Resistance", size: 17)
        let bodyMetrics = UIFontMetrics(forTextStyle: .title1)
        self.font = bodyMetrics.scaledFont(for: myFont!)
    }
}
