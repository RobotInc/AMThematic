//
//  Theme.swift
//  ThemeEngineTests
//
//  Created by Joao Pires on 06/06/2018.
//

import UIKit

public class Theme {
    static let defaultTheme:Theme = Theme(
        colors: [ThemeReference.colorBackground.description: UIColor.white,
                 ThemeReference.colorPrimary.description: UIColor.black,
                 ThemeReference.colorAccent.description: UIColor.blue,
                 ThemeReference.colorPrimaryAlternative.description: UIColor.lightGray,
                 ThemeReference.colorAccentAlternative.description: UIColor.green,
                 ThemeReference.colorTextNormal.description: UIColor.black,
                 ThemeReference.colorTextTitle.description: UIColor.black,
                 ThemeReference.colorTextAccent.description: UIColor.white,
                 ThemeReference.colorTextNormalAlternative.description: UIColor.darkGray],
        
        fonts: [ThemeReference.fontTextNormal.description: UIFont.boldSystemFont(ofSize: 18),
                ThemeReference.fontTextTitle.description: UIFont.systemFont(ofSize: 14),
                ThemeReference.fontTextAccent.description: UIFont.systemFont(ofSize: 14),
                ThemeReference.fontTextNormalAlternative.description: UIFont.systemFont(ofSize: 14)]
    )
    
    static let darkTheme: Theme = Theme(
        colors: [ThemeReference.colorBackground.description: UIColor.black,
                 ThemeReference.colorPrimary.description: UIColor.white,
                 ThemeReference.colorAccent.description: UIColor.orange,
                 ThemeReference.colorPrimaryAlternative.description: UIColor.darkGray,
                 ThemeReference.colorAccentAlternative.description: UIColor.yellow,
                 ThemeReference.colorTextNormal.description: UIColor.white,
                 ThemeReference.colorTextTitle.description: UIColor.white,
                 ThemeReference.colorTextAccent.description: UIColor.white,
                 ThemeReference.colorTextNormalAlternative.description: UIColor.lightGray],
        
        fonts: [ThemeReference.fontTextNormal.description: UIFont.boldSystemFont(ofSize: 18),
                ThemeReference.fontTextTitle.description: UIFont.systemFont(ofSize: 14),
                ThemeReference.fontTextAccent.description: UIFont.systemFont(ofSize: 14),
                ThemeReference.fontTextNormalAlternative.description: UIFont.systemFont(ofSize: 14)]
    )
    
    // MARK: - Properties
    private let colors: [String: UIColor]
    private let fonts: [String: UIFont]
    
    // MARK: - Initializers
    init(colors: [String: UIColor], fonts: [String: UIFont]) {
        self.colors = colors
        self.fonts = fonts
    }
    
    // MARK: - Public Methods
    func getColor(for element: String) -> UIColor? {
        var requestedColor: UIColor?
        for (key, value) in colors {
            if key == element {
                requestedColor = value
            }
        }
        return requestedColor
    }
}

enum ThemeReference : String {
    case colorBackground
    case colorPrimary
    case colorAccent
    case colorPrimaryAlternative
    case colorAccentAlternative
    case colorTextNormal
    case colorTextTitle
    case colorTextAccent
    case colorTextNormalAlternative
    
    case fontTextNormal
    case fontTextTitle
    case fontTextAccent
    case fontTextNormalAlternative
    
    var description : String {
        switch self {
        case .colorBackground: return "colorBackground"
        case .colorPrimary: return "colorPrimary"
        case .colorAccent: return "colorAccent"
        case .colorPrimaryAlternative: return "colorPrimaryAlternative"
        case .colorAccentAlternative: return "colorAccentAlternative"
        case .colorTextNormal: return "colorTextNormal"
        case .colorTextTitle: return "colorTextTitle"
        case .colorTextAccent: return "colorTextAccent"
        case .colorTextNormalAlternative: return "colorTextNormalAlternative"
            
        case .fontTextNormal: return "fontTextNormal"
        case .fontTextTitle: return "fontTextTitle"
        case .fontTextAccent: return "fontTextAccent"
        case .fontTextNormalAlternative: return "fontTextNormalAlternative"
            
        }
    }
}
