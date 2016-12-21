//
//  Transform.swift
//  Veneer
//
//  Created by Wesley Cope on 7/13/16.
//  Copyright © 2016 Wess Cope. All rights reserved.
//

import Foundation
import UIKit

open class AttributesTransform {
  fileprivate(set) var attributes:[String : AnyObject] = [:]
  
  @discardableResult
  open func font(_ font:UIFont) -> AttributesTransform {
    setAttribute(.font(font))
    return self
  }
  
  @discardableResult
  open func paragraphStyle(_ style:NSParagraphStyle) -> AttributesTransform {
    setAttribute(.paragraphStyle(style))
    return self
  }
  
  @discardableResult
  open func color(_ color:UIColor) -> AttributesTransform {
    setAttribute(.color(color))
    return self
  }
  
  @discardableResult
  open func backgroundColor(_ color:UIColor) -> AttributesTransform {
    setAttribute(.backgroundColor(color))
    return self
  }
  
  @discardableResult
  open func ligature(_ enable:Bool) -> AttributesTransform {
    setAttribute(.ligature(enable))
    return self
  }
  
  @discardableResult
  open func kerning(_ value:CGFloat) -> AttributesTransform {
    setAttribute(.kerning(value))
    return self
  }
  
  @discardableResult
  open func strikethrough(_ style:NSUnderlineStyle) -> AttributesTransform {
    setAttribute(.strikethrough(style))
    return self
  }
  
  @discardableResult
  open func underlineStyle(_ style:NSUnderlineStyle) -> AttributesTransform {
    setAttribute(.underlineStyle(style))
    return self
  }
  
  @discardableResult
  open func underlineColor(_ color:UIColor) -> AttributesTransform {
    setAttribute(.underlineColor(color))
    return self
  }
  
  @discardableResult
  open func strikethroughColor(_ color:UIColor) -> AttributesTransform {
    setAttribute(.strikethroughColor(color))
    return self
  }
  
  @discardableResult
  open func strokeColor(_ color:UIColor) -> AttributesTransform {
    setAttribute(.strokeColor(color))
    return self
  }
  
  @discardableResult
  open func strokeWidth(_ width:CGFloat) -> AttributesTransform {
    setAttribute(.strokeWidth(width))
    return self
  }
  
  @discardableResult
  open func shadow(_ shadow:NSShadow) -> AttributesTransform {
    setAttribute(.shadow(shadow))
    return self
  }
  
  @discardableResult
  open func textEffect(_ style:TextEffectStyle) -> AttributesTransform {
    setAttribute(.textEffect(style))
    return self
  }
  
  @discardableResult
  open func attachment(_ attachment:NSTextAttachment) -> AttributesTransform {
    setAttribute(.attachment(attachment))
    return self
  }
  
  @discardableResult
  open func link(_ url:URL) -> AttributesTransform {
    setAttribute(.link(url))
    return self
  }
  
  @discardableResult
  open func linkString(_ str:String) -> AttributesTransform {
    setAttribute(.linkString(str))
    return self
  }
  
  @discardableResult
  open func baseLineOffset(_ offset:CGFloat) -> AttributesTransform {
    setAttribute(.baseLineOffset(offset))
    return self
  }
  
  @discardableResult
  open func obliqueness(_ amount:CGFloat) -> AttributesTransform {
    setAttribute(.obliqueness(amount))
    return self
  }
  
  @discardableResult
  open func expansion(_ amount:CGFloat) -> AttributesTransform {
    setAttribute(.expansion(amount))
    return self
  }
  
  @discardableResult
  open func writingDirection(_ directions:[NSWritingDirectionFormatType]) -> AttributesTransform {
    setAttribute(.writingDirection(directions))
    return self
  }
  
  @discardableResult
  open func direction(_ direction:TextDirection) -> AttributesTransform {
    setAttribute(.direction(direction))
    return self
  }
  
  fileprivate func setAttribute(_ attr: StringAttribute) {
    attributes.updateValue(attr.map.1, forKey: attr.map.0)
  }
}

