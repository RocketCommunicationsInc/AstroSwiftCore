//
//  AstroCoreColors.swift
//
//  Created by rocketjeff.
//  Copyright © 2019 Rocket Communications, Inc. All rights reserved.
//

#if os(iOS) || os(tvOS)
import UIKit
#endif

#if os(watchOS)
import WatchKit
#endif

#if os(macOS)
import AppKit
#endif

// Extend UIColor and NSColor to include conveniece methods to access the four core Astro color palettes
// It's unlikely that an application will need to reference these colors directly, but instead should use the semantic UI colors defined in the AstroSwiftFoundation package.
// Astro color gudelines - https://www.astrouxds.com/design-guidelines/color
//
#if os(iOS) || os(tvOS) || os(watchOS)
extension UIColor
{
    //MARK: colorDebugging
    // If an Astro color fails to load from resources, show this noticeable yellow debug color instead
    private static var astroCoreDebugColor = UIColor.yellow

    //——————————————————————————————————————————————————————————————————————————————
    // Wrap the the UIColor constructor to return a debug color instead of nil on failure
    //——————————————————————————————————————————————————————————————————————————————
    private static func astroCoreColor(named:String)->UIColor
    {
        return UIColor(named:named, in: .module, compatibleWith: nil) ?? astroCoreDebugColor
    }
    
    //——————————————————————————————————————————————————————————————————————————————
    // Astro Core UI colors
    //——————————————————————————————————————————————————————————————————————————————

    //MARK: astroUIPrimary
    public static var astroUIPrimary:UIColor
    {return astroCoreColor(named:"astroUIPrimaryColor")}
    
    public  static var astroUIPrimaryDarken1:UIColor
    {return astroCoreColor(named:"astroUIPrimaryDarken1Color")}

    public static var astroUIPrimaryDarken2:UIColor
    {return astroCoreColor(named:"astroUIPrimaryDarken2Color")}

    public static var astroUIPrimaryDarken3:UIColor
    {return astroCoreColor(named:"astroUIPrimaryDarken3Color")}

    public static var astroUIPrimaryDarken4:UIColor
    {return astroCoreColor(named:"astroUIPrimaryDarken4Color")}
    
    public static var astroUIPrimaryLighten1:UIColor
    {return astroCoreColor(named:"astroUIPrimaryLighten1Color")}

    public static var astroUIPrimaryLighten2:UIColor
    {return astroCoreColor(named:"astroUIPrimaryLighten2Color")}

    public static var astroUIPrimaryLighten3:UIColor
    {return astroCoreColor(named:"astroUIPrimaryLighten3Color")}

    public static var astroUIPrimaryLighten4:UIColor
    {return astroCoreColor(named:"astroUIPrimaryLighten4Color")}

    //MARK: astroUISecondary
    public static var astroUISecondary:UIColor
    {return astroCoreColor(named:"astroUISecondaryColor")}

    public static var astroUISecondaryDarken1:UIColor
    {return astroCoreColor(named:"astroUISecondaryDarken1Color")}

    public static var astroUISecondaryDarken2:UIColor
    {return astroCoreColor(named:"astroUISecondaryDarken2Color")}

    public static var astroUISecondaryDarken3:UIColor
    {return astroCoreColor(named:"astroUISecondaryDarken3Color")}

    public static var astroUISecondaryDarken4:UIColor
    {return astroCoreColor(named:"astroUISecondaryDarken4Color")}
    
    public static var astroUISecondaryLighten1:UIColor
    {return astroCoreColor(named:"astroUISecondaryLighten1Color")}

    public static var astroUISecondaryLighten2:UIColor
    {return astroCoreColor(named:"astroUISecondaryLighten2Color")}

    public static var astroUISecondaryLighten3:UIColor
    {return astroCoreColor(named:"astroUISecondaryLighten3Color")}

    public static var astroUISecondaryLighten4:UIColor
    {return astroCoreColor(named:"astroUIPrimaryLighten4Color")}

    //MARK: astroUITertiary
    public static var astroUITertiary:UIColor
    {return astroCoreColor(named:"astroUITertiaryColor")}

    public static var astroUITertiaryDarken1:UIColor
    {return astroCoreColor(named:"astroUITertiaryDarken1Color")}

    public static var astroUITertiaryDarken2:UIColor
    {return astroCoreColor(named:"astroUITertiaryDarken2Color")}

    public static var astroUITertiaryDarken3:UIColor
    {return astroCoreColor(named:"astroUITertiaryDarken3Color")}

    public static var astroUITertiaryDarken4:UIColor
    {return astroCoreColor(named:"astroUITertiaryDarken4Color")}
    
    public static var astroUITertiaryLighten1:UIColor
    {return astroCoreColor(named:"astroUITertiaryLighten1Color")}

    public static var astroUITertiaryLighten2:UIColor
    {return astroCoreColor(named:"astroUITertiaryLighten2Color")}

    public static var astroUITertiaryLighten3:UIColor
    {return astroCoreColor(named:"astroUITertiaryLighten3Color")}

    public static var astroUITertiaryLighten4:UIColor
    {return astroCoreColor(named:"astroUIPrimaryLighten4Color")}

    //MARK: astroUIQuaternary
    public static var astroUIQuaternary:UIColor
    {return astroCoreColor(named:"astroUIQuaternaryColor")}
    
    public static var astroUIQuaternaryDarken1:UIColor
    {return astroCoreColor(named:"astroUIQuaternaryDarken1Color")}

    public static var astroUIQuaternaryDarken2:UIColor
    {return astroCoreColor(named:"astroUIQuaternaryDarken2Color")}

    public static var astroUIQuaternaryDarken3:UIColor
    {return astroCoreColor(named:"astroUIQuaternaryDarken3Color")}

    public static var astroUIQuaternaryDarken4:UIColor
    {return astroCoreColor(named:"astroUIQuaternaryDarken4Color")}
    
    public static var astroUIQuaternaryLighten1:UIColor
    {return astroCoreColor(named:"astroUIQuaternaryLighten1Color")}

    public static var astroUIQuaternaryLighten2:UIColor
    {return astroCoreColor(named:"astroUIQuaternaryLighten2Color")}

    public static var astroUIQuaternaryLighten3:UIColor
    {return astroCoreColor(named:"astroUIQuaternaryLighten3Color")}

    public static var astroUIQuaternaryLighten4:UIColor
    {return astroCoreColor(named:"astroUIPrimaryLighten4Color")}    
}
#endif

#if os(macOS)
extension NSColor
{
    //MARK: colorDebugging
    // If an Astro color fails to load from resources, show this noticeable yellow debug color instead
    private static var astroCoreDebugColor = NSColor.yellow

    //——————————————————————————————————————————————————————————————————————————————
    // Wrap the the NSColor constructor to return a debug color instead of nil on failure
    //——————————————————————————————————————————————————————————————————————————————
    private static func astroCoreColor(named:String)->NSColor
    {
        return NSColor(named:named, in: .module, compatibleWith: nil) ?? astroCoreDebugColor
    }
    
    //——————————————————————————————————————————————————————————————————————————————
    // Astro Core UI colors
    //——————————————————————————————————————————————————————————————————————————————

    //MARK: astroUIPrimary
    public static var astroUIPrimary:NSColor
    {return astroCoreColor(named:"astroUIPrimaryColor")}
    
    public  static var astroUIPrimaryDarken1:NSColor
    {return astroCoreColor(named:"astroUIPrimaryDarken1Color")}

    public static var astroUIPrimaryDarken2:NSColor
    {return astroCoreColor(named:"astroUIPrimaryDarken2Color")}

    public static var astroUIPrimaryDarken3:NSColor
    {return astroCoreColor(named:"astroUIPrimaryDarken3Color")}

    public static var astroUIPrimaryDarken4:NSColor
    {return astroCoreColor(named:"astroUIPrimaryDarken4Color")}
    
    public static var astroUIPrimaryLighten1:NSColor
    {return astroCoreColor(named:"astroUIPrimaryLighten1Color")}

    public static var astroUIPrimaryLighten2:NSColor
    {return astroCoreColor(named:"astroUIPrimaryLighten2Color")}

    public static var astroUIPrimaryLighten3:NSColor
    {return astroCoreColor(named:"astroUIPrimaryLighten3Color")}

    public static var astroUIPrimaryLighten4:NSColor
    {return astroCoreColor(named:"astroUIPrimaryLighten4Color")}

    //MARK: astroUISecondary
    public static var astroUISecondary:NSColor
    {return astroCoreColor(named:"astroUISecondaryColor")}

    public static var astroUISecondaryDarken1:NSColor
    {return astroCoreColor(named:"astroUISecondaryDarken1Color")}

    public static var astroUISecondaryDarken2:NSColor
    {return astroCoreColor(named:"astroUISecondaryDarken2Color")}

    public static var astroUISecondaryDarken3:NSColor
    {return astroCoreColor(named:"astroUISecondaryDarken3Color")}

    public static var astroUISecondaryDarken4:NSColor
    {return astroCoreColor(named:"astroUISecondaryDarken4Color")}
    
    public static var astroUISecondaryLighten1:NSColor
    {return astroCoreColor(named:"astroUISecondaryLighten1Color")}

    public static var astroUISecondaryLighten2:NSColor
    {return astroCoreColor(named:"astroUISecondaryLighten2Color")}

    public static var astroUISecondaryLighten3:NSColor
    {return astroCoreColor(named:"astroUISecondaryLighten3Color")}

    public static var astroUISecondaryLighten4:NSColor
    {return astroCoreColor(named:"astroUIPrimaryLighten4Color")}

    //MARK: astroUITertiary
    public static var astroUITertiary:NSColor
    {return astroCoreColor(named:"astroUITertiaryColor")}

    public static var astroUITertiaryDarken1:NSColor
    {return astroCoreColor(named:"astroUITertiaryDarken1Color")}

    public static var astroUITertiaryDarken2:NSColor
    {return astroCoreColor(named:"astroUITertiaryDarken2Color")}

    public static var astroUITertiaryDarken3:NSColor
    {return astroCoreColor(named:"astroUITertiaryDarken3Color")}

    public static var astroUITertiaryDarken4:NSColor
    {return astroCoreColor(named:"astroUITertiaryDarken4Color")}
    
    public static var astroUITertiaryLighten1:NSColor
    {return astroCoreColor(named:"astroUITertiaryLighten1Color")}

    public static var astroUITertiaryLighten2:NSColor
    {return astroCoreColor(named:"astroUITertiaryLighten2Color")}

    public static var astroUITertiaryLighten3:NSColor
    {return astroCoreColor(named:"astroUITertiaryLighten3Color")}

    public static var astroUITertiaryLighten4:NSColor
    {return astroCoreColor(named:"astroUIPrimaryLighten4Color")}

    //MARK: astroUIQuaternary
    public static var astroUIQuaternary:NSColor
    {return astroCoreColor(named:"astroUIQuaternaryColor")}
    
    public static var astroUIQuaternaryDarken1:NSColor
    {return astroCoreColor(named:"astroUIQuaternaryDarken1Color")}

    public static var astroUIQuaternaryDarken2:NSColor
    {return astroCoreColor(named:"astroUIQuaternaryDarken2Color")}

    public static var astroUIQuaternaryDarken3:NSColor
    {return astroCoreColor(named:"astroUIQuaternaryDarken3Color")}

    public static var astroUIQuaternaryDarken4:NSColor
    {return astroCoreColor(named:"astroUIQuaternaryDarken4Color")}
    
    public static var astroUIQuaternaryLighten1:NSColor
    {return astroCoreColor(named:"astroUIQuaternaryLighten1Color")}

    public static var astroUIQuaternaryLighten2:NSColor
    {return astroCoreColor(named:"astroUIQuaternaryLighten2Color")}

    public static var astroUIQuaternaryLighten3:NSColor
    {return astroCoreColor(named:"astroUIQuaternaryLighten3Color")}

    public static var astroUIQuaternaryLighten4:NSColor
    {return astroCoreColor(named:"astroUIPrimaryLighten4Color")}
}
#endif
