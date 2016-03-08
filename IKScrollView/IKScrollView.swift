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
    
    /**
     *  Content view will be sized as required using closures for each value
     *
     *  @param width: Closure called when a width is needed
     *
     *  @return Closure called when a height is needed
     */
    case Dynamic(width: () -> CGFloat, height: () -> CGFloat)
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
            case .Dynamic(let width, let height): size.width = width(); size.height = height()
            case .None:     break
            }
            
            contentView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
            self.contentSize = size
        }
    }
}
