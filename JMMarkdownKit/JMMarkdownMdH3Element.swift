//
//  JMMarkdownMdH3Element.swift
//  Pods
//
//  Created by Julia Platova on 14.11.25.
//

import Foundation
import UIKit
import JFMarkdownKit

public final class JMMarkdownMdH3Element: CDMarkdownElement, CDMarkdownStyle {
    fileprivate static let regex = "^[ \\t]*#{3}[ \\t]+(.+)$"
    
    public var backgroundColor: UIColor?
    public var font: UIFont?
    public var color: UIColor?
    public var paragraphStyle: NSParagraphStyle?
    
    public func regularExpression() throws -> NSRegularExpression {
        return try NSRegularExpression(pattern: JMMarkdownMdH3Element.regex, options: [.anchorsMatchLines])
    }
    
    public var regex: String {
        return JMMarkdownMdH3Element.regex
    }
    
    public func match(_ match: NSTextCheckingResult, attributedString: NSMutableAttributedString) {
        let textRange = match.range(at: 1)
        let text = attributedString.attributedSubstring(from: textRange)
        
        let replacementRange = match.range
        attributedString.replaceCharacters(in: replacementRange, with: text)
        
        let formatRange = NSRange(location: replacementRange.location, length: text.length)
        attributedString.addAttributes(generateAttributes(), range: formatRange)
    }
}
