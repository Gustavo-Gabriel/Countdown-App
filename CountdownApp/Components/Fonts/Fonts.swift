import UIKit

struct Fonts {
    static func font(_ family: FontFamily, weight: FontWeight, size: FontSize) -> UIFont {
        let fontName = family.name(for: weight)
        
        if let font = UIFont(name: fontName, size: size.rawValue) {
            return font
        } else {
            Assets.loadSansFont()
            return UIFont(name: fontName, size: size.rawValue) ?? UIFont.systemFont(ofSize: size.rawValue)
        }
    }
    
    static func dynamicFont(for family: FontFamily,
                            weight: FontWeight,
                            size: FontSize,
                            compatibleWith traitCollection: UITraitCollection? = nil) -> UIFont {

        let font = font(family, weight: weight, size: size)
        let metrics = UIFontMetrics.default

        return metrics.scaledFont(for: font, compatibleWith: traitCollection)
    }
}

extension Fonts {
    static var superHero: UIFont {
        font(.display, weight: .semibold, size: .xGiant)
    }

    static var hero: UIFont {
        font(.display, weight: .light, size: .huge)
    }

    static var hero2: UIFont {
        font(.display, weight: .semibold, size: .huge)
    }

    static var header: UIFont {
        font(.display, weight: .light, size: .xxxLarge)
    }

    static var header2: UIFont {
        font(.display, weight: .semibold, size: .xxxLarge)
    }

    static var title: UIFont {
        font(.display, weight: .regular, size: .xLarge)
    }

    static var subtitle: UIFont {
        font(.display, weight: .regular, size: .large)
    }

    static var subtitle2: UIFont {
        font(.display, weight: .semibold, size: .large)
    }

    static var overline: UIFont {
        font(.text, weight: .regular, size: .xSmall)
    }
    
    static var overline2: UIFont {
        font(.text, weight: .regular, size: .small)
    }

    static var body: UIFont {
        font(.text, weight: .regular, size: .medium)
    }

    static var body2: UIFont {
        font(.text, weight: .bold, size: .medium)
    }

    static var caption: UIFont {
        font(.text, weight: .regular, size: .small)
    }

    static var caption2: UIFont {
        font(.text, weight: .bold, size: .medium)
    }

    static var navBarFont: UIFont {
        font(.display, weight: .semibold, size: .large)
    }
}
