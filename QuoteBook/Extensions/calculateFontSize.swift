//
//  calculateFontSize.swift
//  QuoteBook
//
//  Created by Адам Табиев on 10.01.2024.
//

import SwiftUI

extension CommentContainerView {
    func calculateFontSize(for text: String) -> CGFloat {
        var size: CGFloat = UIFont.labelFontSize
        let label = UILabel()
        label.text = text
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        
        label.frame.size = .zero
        label.sizeToFit()
        size = label.font.pointSize
        
        return size
    }
}
