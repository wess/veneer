//
//  Transform.swift
//  Veneer
//
//  Created by Wesley Cope on 7/13/16.
//  Copyright © 2016 Wess Cope. All rights reserved.
//

import Foundation
import UIKit

public class AttributesTransform {
    private(set) var attributes:[String : AnyObject] = [:]
    
    public func Font(font:UIFont) -> AttributesTransform {
        setAttribute(.Font(font))
        return self
    }
    
    public func ParagraphStyle(style:NSParagraphStyle) -> AttributesTransform {
        setAttribute(.ParagraphStyle(style))
        return self
    }
    
    public func Color(color:UIColor) -> AttributesTransform {
        setAttribute(.Color(color))
        return self
    }
    
    public func BackgroundColor(color:UIColor) -> AttributesTransform {
        setAttribute(.BackgroundColor(color))
        return self
    }
    
    public func Ligature(enable:Bool) -> AttributesTransform {
        setAttribute(.Ligature(enable))
        return self
    }
    
    public func Kerning(value:CGFloat) -> AttributesTransform {
        setAttribute(.Kerning(value))
        return self
    }
    
    public func Strikethrough(style:NSUnderlineStyle) -> AttributesTransform {
        setAttribute(.Strikethrough(style))
        return self
    }
    
    public func UnderlineStyle(style:NSUnderlineStyle) -> AttributesTransform {
        setAttribute(.UnderlineStyle(style))
        return self
    }
    
    public func UnderlineColor(color:UIColor) -> AttributesTransform {
        setAttribute(.UnderlineColor(color))
        return self
    }
    
    public func StrikethroughColor(color:UIColor) -> AttributesTransform {
        setAttribute(.StrikethroughColor(color))
        return self
    }
    
    public func StrokeColor(color:UIColor) -> AttributesTransform {
        setAttribute(.StrokeColor(color))
        return self
    }
    
    public func StrokeWidth(width:CGFloat) -> AttributesTransform {
        setAttribute(.StrokeWidth(width))
        return self
    }
    
    public func Shadow(shadow:NSShadow) -> AttributesTransform {
        setAttribute(.Shadow(shadow))
        return self
    }
    
    public func TextEffect(style:TextEffectStyle) -> AttributesTransform {
        setAttribute(.TextEffect(style))
        return self
    }
    
    public func Attachment(attachment:NSTextAttachment) -> AttributesTransform {
        setAttribute(.Attachment(attachment))
        return self
    }
    
    public func Link(url:NSURL) -> AttributesTransform {
        setAttribute(.Link(url))
        return self
    }
    
    public func LinkString(str:String) -> AttributesTransform {
        setAttribute(.LinkString(str))
        return self
    }
    
    public func BaseLineOffset(offset:CGFloat) -> AttributesTransform {
        setAttribute(.BaseLineOffset(offset))
        return self
    }
    
    public func Obliqueness(amount:CGFloat) -> AttributesTransform {
        setAttribute(.Obliqueness(amount))
        return self
    }
    
    public func Expansion(amount:CGFloat) -> AttributesTransform {
        setAttribute(.Expansion(amount))
        return self
    }
    
    public func WritingDirection(directions:[NSWritingDirectionFormatType]) -> AttributesTransform {
        setAttribute(.WritingDirection(directions))
        return self
    }
    
    public func Direction(direction:TextDirection) -> AttributesTransform {
        setAttribute(.Direction(direction))
        return self
    }
    
    private func setAttribute(attr: StringAttribute) {
        attributes.updateValue(attr.map.1, forKey: attr.map.0)
    }
}

