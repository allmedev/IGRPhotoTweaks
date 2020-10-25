//
//  IGRPhotoTweakViewController+AspectRatio.swift
//  Pods
//
//  Created by Vitalii Parovishnyk on 4/26/17.
//
//

import Foundation

extension IGRPhotoTweakViewController {
    public func resetAspectRect() {
        self.photoView.resetAspectRect()
    }
    
    public func setCropAspectRect(aspectRatio: CGSize) {
        self.photoView.setCropAspectRect(aspectRatio: aspectRatio)
    }
    
    public func lockAspectRatio(_ lock: Bool) {
        self.photoView.lockAspectRatio(lock)
    }
    
}
