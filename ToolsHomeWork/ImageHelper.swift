//
//  ImageHelper.swift
//  ToolsHomeWork
//
//  Created by Valiantsin Vasiliavitski on 12/19/20.
//  Copyright © 2020 Igor Kupreev. All rights reserved.
//

import UIKit

struct ImageHelper {
    
    static func resizeImage(atPath path: String, forMaxSize maxSize: CGFloat) -> CGImage? {
        //resizing image
        let url = URL(fileURLWithPath: path) as CFURL
        guard let imageSource = CGImageSourceCreateWithURL(url, nil) else { return nil }
        let options = [
        kCGImageSourceThumbnailMaxPixelSize: maxSize,
        kCGImageSourceCreateThumbnailFromImageAlways: true
        ] as CFDictionary
        let scaledImage = CGImageSourceCreateThumbnailAtIndex(imageSource, 0, options)
        
        return scaledImage
    }
    
}
