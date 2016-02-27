//
//  IKScrollView.swift
//  IKScrollView
//
//  Created by Ian Keen on 27/02/2016.
//  Copyright © 2016 Mustard. All rights reserved.
//

import UIKit

enum SizeMatching {
    /// Content view will keep its height and be sized to the width of the `IKScrollView`
    case Width
    
    /// Content view will keep its width and be sized to the height of the `IKScrollView`
    case Height
    
    /// Content view will be sized to match the width and height of the `IKScrollView`
    case Both
    
    /// No resizing will happen to the content view
    case None
}

class IKScrollView: UIScrollView {
    //MARK: - Outlets
    @IBOutlet private var contentView: UIView?
    
    //MARK: - Properties
    @IBInspectable var sizeMatching = SizeMatching.Width
    
    //MARK: - Lifecycle
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if let contentView = self.contentView {
            if (contentView.superview != self) {
                self.addSubview(contentView)
            }
            
            var size = contentView.bounds.size
            
            switch self.sizeMatching {
            case .Width:    size.width = self.bounds.width
            case .Height:   size.height = self.bounds.height
            case .Both:     size.width = self.bounds.width; size.height = self.bounds.height
            case .None:     break
            }
            
            contentView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
            self.contentSize = size
        }
    }
}
