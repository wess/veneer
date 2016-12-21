//
//  Attributes.swift
//  Veneer
//
//  Created by Wesley Cope on 7/13/16.
//  Copyright © 2016 Wess Cope. All rights reserved.
//

import Foundation
import UIKit

public enum TextEffectStyle {
    case letterPress
    
    public var attributeName:String {
        switch self {
        case .letterPress:
            return NSTextEffectLetterpressStyle
        }
    }
}

public enum TextDirection : Int {
    case horizontal = 0
    case vertical   = 1
}

public enum StringAttribute {
    case font(UIFont)
    case paragraphStyle(NSParagraphStyle)
    case color(UIColor)
    case backgroundColor(UIColor)
    case ligature(Bool)
    case kerning(CGFloat)
    case strikethrough(NSUnderlineStyle)
    case underlineStyle(NSUnderlineStyle)
    case underlineColor(UIColor)
    case strikethroughColor(UIColor)
    case strokeColor(UIColor)
    case strokeWidth(CGFloat)
    case shadow(NSShadow)
    case textEffect(TextEffectStyle)
    case attachment(NSTextAttachment)
    case link(URL)
    case linkString(String)
    case baseLineOffset(CGFloat)
    case obliqueness(CGFloat)
    case expansion(CGFloat)
    case writingDirection([NSWritingDirectionFormatType])
    case direction(TextDirection)
    
    public var map:(String, AnyObject) {
        switch self {
        case .font(let font):
            return (NSFontAttributeName, font)
        case .paragraphStyle(let style):
            return (NSParagraphStyleAttributeName, style)
        case .color(let color):
            return (NSForegroundColorAttributeName, color)
        case .backgroundColor(let color):
            return (NSBackgroundColorAttributeName, color)
        case .ligature(let ligature):
            return (NSLigatureAttributeName, ligature as! AnyObject)
        case .kerning(let kerning):
            return (NSKernAttributeName, kerning as AnyObject)
        case .strikethrough(let strikethrough):
            return (NSStrikethroughStyleAttributeName, strikethrough.rawValue as AnyObject)
        case .underlineStyle(let underline):
            return (NSUnderlineStyleAttributeName, underline.rawValue as AnyObject)
        case .strokeColor(let color):
            return (NSStrokeColorAttributeName, color)
        case .strokeWidth(let width):
            return (NSStrokeWidthAttributeName, width as AnyObject)
        case .shadow(let shadow):
            return (NSShadowAttributeName, shadow)
        case .textEffect(let effect):
            return (NSTextEffectAttributeName, effect.attributeName as AnyObject)
        case .attachment(let attachment):
            return (NSAttachmentAttributeName, attachment)
        case .link(let link):
            return (NSLinkAttributeName, link as AnyObject)
        case .linkString(let link):
            return (NSLinkAttributeName, link as AnyObject)
        case .baseLineOffset(let offset):
            return (NSBaselineOffsetAttributeName, offset as AnyObject)
        case .underlineColor(let color):
            return (NSUnderlineColorAttributeName, color)
        case .strikethroughColor(let color):
            return (NSStrikethroughColorAttributeName, color)
        case .obliqueness(let obliqueness):
            return (NSObliquenessAttributeName, obliqueness as AnyObject)
        case .expansion(let expansion):
            return (NSExpansionAttributeName, expansion as AnyObject)
        case .writingDirection(let directions):
            return (NSWritingDirectionAttributeName, (directions.map{ $0.rawValue } as! AnyObject))
        case .direction(let direction):
            return (NSVerticalGlyphFormAttributeName, direction.rawValue as AnyObject)
        }
    }
}
