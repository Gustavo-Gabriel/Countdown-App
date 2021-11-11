import UIKit

var sansDisplayFontLoaded: Bool = false
var sansTextFontLoaded: Bool = false

class Assets {
    static func imageFromName(_ name: String) -> UIImage? {
        return UIImage(named: name, in: Bundle(for: self), compatibleWith: nil)
    }

    static func colorFromName(_ name: String, alpha: CGFloat = 1.0) -> UIColor? {
        return UIColor(named: name, in: Bundle(for: self), compatibleWith: nil)?.withAlphaComponent(alpha)
    }

    static func loadSansFont() {
        loadSansDisplayFont()
        loadSansTextFont()
    }

    static func loadSansDisplayFont() {
        if sansDisplayFontLoaded { return }
        
        for weight in FontWeight.allCases {
            let fontName = FontFamily.display.name(for: weight)
            guard registerFont(name: fontName) else {
                print("Failed to register font")
                return
            }
        }

        sansDisplayFontLoaded = true
    }

    static func loadSansTextFont() {
        if sansTextFontLoaded { return }

        for weight in FontWeight.allCases {
            if weight.rawValue != "Light" && weight.rawValue != "Medium" {
                let fontName = FontFamily.text.name(for: weight)
                guard registerFont(name: fontName) else {
                    print("Failed to register font")
                    return
                }
            }
        }

        sansTextFontLoaded = true
    }

    private static func registerFont(name: String) -> Bool {
        var error: Unmanaged<CFError>?
        let bundle = Bundle(for: self)

        guard let pathForResource = bundle.url(forResource: name, withExtension: "ttf"),
              CTFontManagerRegisterFontsForURL(pathForResource as CFURL,
                                               CTFontManagerScope.process, &error) else {
                  print(error as Any)
                  return false
              }

        return true
    }
}


