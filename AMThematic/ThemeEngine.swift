//
//  ThemeEngine.swift
//  ThemeEngineTests
//
//  Created by Joao Pires on 06/06/2018.
//  Copyright © 2018 Joao Pires. All rights reserved.
//

import UIKit

open class ThemeEngine {
    static var Motor = ThemeEngine()
    
    // MARK: - Properties
    private var isInitialized: Bool = false
    private var activeTheme: Theme!
    private var registeredElements: [String: [Any]] = [:]
    
    // MARK: Open Methods
    open func apply(theme: Theme) {
        activeTheme = theme
        ignite()
    }
    
    open func powerUp(with theme: Theme) {
        if !isInitialized {
            self.activeTheme = theme
            self.isInitialized = true
        }
    }
    
    open func register(views: [Any], in element: String) {
        registeredElements.updateValue(views, forKey: element)
    }
    
    open func ignite() {
        for (element, views) in registeredElements {
            if let newColor = activeTheme.getColor(for: element) {
                for aView in views {
                    if let view = aView as? UIView {
                        view.backgroundColor = newColor
                    }
                }
            }
        }
    }
    
}
