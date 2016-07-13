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
    case LetterPress
    
    public var attributeName:String {
        switch self {
        case .LetterPress:
            return NSTextEffectLetterpressStyle
        }
    }
}

public enum TextDirection : Int {
    case Horizontal = 0
    case Vertical   = 1
}

public enum StringAttribute {
    case Font(UIFont)
    case ParagraphStyle(NSParagraphStyle)
    case Color(UIColor)
    case BackgroundColor(UIColor)
    case Ligature(Bool)
    case Kerning(CGFloat)
    case Strikethrough(NSUnderlineStyle)
    case UnderlineStyle(NSUnderlineStyle)
    case UnderlineColor(UIColor)
    case StrikethroughColor(UIColor)
    case StrokeColor(UIColor)
    case StrokeWidth(CGFloat)
    case Shadow(NSShadow)
    case TextEffect(TextEffectStyle)
    case Attachment(NSTextAttachment)
    case Link(NSURL)
    case LinkString(String)
    case BaseLineOffset(CGFloat)
    case Obliqueness(CGFloat)
    case Expansion(CGFloat)
    case WritingDirection([NSWritingDirectionFormatType])
    case Direction(TextDirection)
    
    public var map:(String, AnyObject) {
        switch self {
        case .Font(let font):
            return (NSFontAttributeName, font)
        case .ParagraphStyle(let style):
            return (NSParagraphStyleAttributeName, style)
        case .Color(let color):
            return (NSForegroundColorAttributeName, color)
        case .BackgroundColor(let color):
            return (NSBackgroundColorAttributeName, color)
        case .Ligature(let ligature):
            return (NSLigatureAttributeName, Int(ligature))
        case .Kerning(let kerning):
            return (NSKernAttributeName, kerning)
        case .Strikethrough(let strikethrough):
            return (NSStrikethroughStyleAttributeName, strikethrough.rawValue)
        case .UnderlineStyle(let underline):
            return (NSUnderlineStyleAttributeName, underline.rawValue)
        case .StrokeColor(let color):
            return (NSStrokeColorAttributeName, color)
        case .StrokeWidth(let width):
            return (NSStrokeWidthAttributeName, width)
        case .Shadow(let shadow):
            return (NSShadowAttributeName, shadow)
        case .TextEffect(let effect):
            return (NSTextEffectAttributeName, effect.attributeName)
        case .Attachment(let attachment):
            return (NSAttachmentAttributeName, attachment)
        case .Link(let link):
            return (NSLinkAttributeName, link)
        case .LinkString(let link):
            return (NSLinkAttributeName, link)
        case .BaseLineOffset(let offset):
            return (NSBaselineOffsetAttributeName, offset)
        case .UnderlineColor(let color):
            return (NSUnderlineColorAttributeName, color)
        case .StrikethroughColor(let color):
            return (NSStrikethroughColorAttributeName, color)
        case .Obliqueness(let obliqueness):
            return (NSObliquenessAttributeName, obliqueness)
        case .Expansion(let expansion):
            return (NSExpansionAttributeName, expansion)
        case .WritingDirection(let directions):
            return (NSWritingDirectionAttributeName, directions.map{ $0.rawValue })
        case .Direction(let direction):
            return (NSVerticalGlyphFormAttributeName, direction.rawValue)
        }
    }
}
