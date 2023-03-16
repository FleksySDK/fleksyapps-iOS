//  BaseContent.swift
//  FleksyApps
//
//  Copyright © 2023 Thingthing. All rights reserved.
//


import Foundation

/// The protocol that the model objects of the ``BaseApp`` must implement.
///
/// Each ``BaseContent`` object gets shown in a cell of the list in the FleksyApp.
///
/// - Important: The default implementation of `Hashable` only considers the ``BaseContent/id``.
public protocol BaseContent: Hashable {
    
    /// A unique identifier.
    ///
    /// This identifier is not only used to differentiate between model objects,
    /// but it is also used to name the media file in disk.
    /// Thus, it must be unique and constant for the same model.
    var id: String { get }
    
    /// The object linking to the media content to be shown in a cell of the list in the FleksyApp.
    var viewMedia: BaseMedia { get }
}

extension BaseContent {
    // MARK: - Hashable
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    // MARK: - Equatable
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
}
