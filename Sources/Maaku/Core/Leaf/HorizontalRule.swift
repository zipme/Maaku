//
//  HorizontalRule.swift
//  Maaku
//
//  Created by Kris Baker on 12/20/17.
//  Copyright © 2017 Kristopher Baker. All rights reserved.
//

import Foundation

#if os(OSX)
    import AppKit
#else
    import UIKit
#endif

/// Represents a markdonw horizontal rule (thematic break).
public struct HorizontalRule: LeafBlock {

    /// Initializes a HorizontalRule.
    ///
    /// - Returns:
    ///     The HorizontalRule.
    public init() {

    }

}

public extension HorizontalRule {

    public func attributedText(style: Style) -> NSAttributedString {
        let attributes: [NSAttributedStringKey: Any] = [
            .font: style.fonts.current,
            .foregroundColor: style.colors.current,
            .strikethroughColor: style.colors.current,
            .strikethroughStyle: NSNumber(value: NSUnderlineStyle.styleSingle.rawValue as Int)]
        return NSAttributedString(string: "-----\n", attributes: attributes)
    }

}
