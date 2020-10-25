//
//  IGRPhotoTweakView+AspectRatio.swift
//  Pods
//
//  Created by Vitalii Parovishnyk on 4/26/17.
//
//

import Foundation
import CoreGraphics

extension IGRPhotoTweakView {
    public func resetAspectRect() {
        self.cropView.frame = CGRect(x: CGFloat.zero,
                                     y: CGFloat.zero,
                                     width: self.originalSize.width,
                                     height: self.originalSize.height)
        self.cropView.center = self.scrollView.center
        self.cropView.resetAspectRect()
        
        self.cropViewDidStopCrop(self.cropView)
    }
    
    public func setCropAspectRect(aspectRatio: CGSize) {
        self.aspectRatio = aspectRatio
        self.cropView.setCropAspectRect(aspectRatio: aspectRatio, maxSize:self.originalSize)
        self.cropView.center = self.scrollView.center
        
        self.cropViewDidStopCrop(self.cropView)
    }
    
    public func lockAspectRatio(_ lock: Bool) {
        self.cropView.lockAspectRatio(lock)
    }
}
