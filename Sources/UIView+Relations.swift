//
//  UIView+Relations.swift
//  Framezilla
//
//  Created by Nikita on 26/08/16.
//  Copyright © 2016 Nikita. All rights reserved.
//

import Foundation
import ObjectiveC

enum RelationType: Int {
    case Bottom
    case Top
    case Left
    case Right
    case Width
    case WidthTo
    case Height
    case HeightTo
    case CenterX
    case CenterY
}

fileprivate var relationTypeAssociationKey: UInt8 = 0

extension UIView {
    
    var relationType: RelationType? {
        get {
            return objc_getAssociatedObject(self, &relationTypeAssociationKey) as? RelationType
        }
        set(newValue) {
            objc_setAssociatedObject(self, &relationTypeAssociationKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

public extension UIView {
    
    

    public var nui_width: UIView {
        get {
            relationType = .Width
            return self
        }
    }
    
    public var nui_height: UIView {
        get {
            relationType = .Height
            return self
        }
    }
    
    public var nui_left: UIView {
        get {
            relationType = .Left
            return self
        }
    }
    
    public var nui_right: UIView {
        get {
            relationType = .Right
            return self
        }
    }
    
    public var nui_top: UIView {
        get {
            relationType = .Top
            return self
        }
    }
    
    public var nui_bottom: UIView {
        get {
            relationType = .Bottom
            return self
        }
    }
    
    public var nui_centerX: UIView {
        get {
            relationType = .CenterX
            return self
        }
    }
    
    public var nui_centerY: UIView {
        get {
            relationType = .CenterY
            return self
        }
    }
}
