//
//  IGRPhotoTweakView+Customization.swift
//  Pods
//
//  Created by Vitalii Parovishnyk on 4/25/17.
//
//

import Foundation
import CoreGraphics
import UIKit

public protocol IGRPhotoTweakViewCustomizationDelegate : class {
    /*
     Lines between mask and crop area
     */
    func borderColor() -> UIColor
    
    func borderWidth() -> CGFloat
    
    /*
     Corner of 2 border lines
     */
    func cornerBorderWidth() -> CGFloat
    
    func cornerBorderLength() -> CGFloat
    
    /*
     Lines Count
     */
    func cropLinesCount() -> Int
    
    func gridLinesCount() -> Int
    
    /*
     Mask customization
     */
    func isHighlightMask() -> Bool
    
    func highlightMaskAlphaValue() -> CGFloat
    
    /*
     Insets for crop view
     */
    func canvasInsets() -> UIEdgeInsets
}

extension IGRPhotoTweakView {
    
    func borderColor() -> UIColor {
        return self.customizationDelegate?.borderColor() ?? .clear
    }
    
    func borderWidth() -> CGFloat {
        return self.customizationDelegate?.borderWidth() ?? 0
    }
    
    func cornerBorderWidth() -> CGFloat {
        return self.customizationDelegate?.cornerBorderWidth() ?? 0
    }
    
    func cornerBorderLength() -> CGFloat {
        return self.customizationDelegate?.cornerBorderLength() ?? 0
    }
    
    func cropLinesCount() -> Int {
        return self.customizationDelegate?.cropLinesCount() ?? 0
    }
    
    func gridLinesCount() -> Int {
        return self.customizationDelegate?.gridLinesCount() ?? 0
    }
    
    func isHighlightMask() -> Bool {
        return self.customizationDelegate?.isHighlightMask() ?? false
    }
    
    func highlightMaskAlphaValue() -> CGFloat {
        return self.customizationDelegate?.highlightMaskAlphaValue() ?? 0
    }
    
    func canvasInsets() -> UIEdgeInsets {
        return self.customizationDelegate?.canvasInsets() ?? .zero
    }
}
