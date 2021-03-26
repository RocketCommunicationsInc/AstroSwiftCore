//
//  AstroCoreColors.swift
//
//  Created by rocketjeff.
//  Copyright © 2019-2021 Rocket Communications, Inc. All rights reserved.
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

import SwiftUI

// Extend Color, for SwiftUI, to include many convenience methods to access the Astro UI and Status colors
// Astro color gudelines - https://www.astrouxds.com/design-guidelines/color
//
public extension Color
{
    //——————————————————————————————————————————————————————————————————————————————
    // Wrap the the Color constructor
    //——————————————————————————————————————————————————————————————————————————————
    private static func astroCoreColor(_ named:String)->Color
    {
        // The Color constructor is non-failable, so no debug color
        return Color(named, bundle: .module)
    }
    
    //——————————————————————————————————————————————————————————————————————————————
    // Astro Core UI colors
    //——————————————————————————————————————————————————————————————————————————————

    //MARK: astroUIPrimary
    static var astroUIPrimary:Color
    {return astroCoreColor("Astro UI Primary Color")}
    
    static var astroUIPrimaryDarken1:Color
    {return astroCoreColor("Astro UI Primary Darken 1 Color")}

    static var astroUIPrimaryDarken2:Color
    {return astroCoreColor("Astro UI Primary Darken 2 Color")}

    static var astroUIPrimaryDarken3:Color
    {return astroCoreColor("Astro UI Primary Darken 3 Color")}

    static var astroUIPrimaryDarken4:Color
    {return astroCoreColor("Astro UI Primary Darken 4 Color")}
    
    static var astroUIPrimaryLighten1:Color
    {return astroCoreColor("Astro UI Primary Lighten 1 Color")}

    static var astroUIPrimaryLighten2:Color
    {return astroCoreColor("Astro UI Primary Lighten 2 Color")}

    static var astroUIPrimaryLighten3:Color
    {return astroCoreColor("Astro UI Primary Lighten 3 Color")}

    static var astroUIPrimaryLighten4:Color
    {return astroCoreColor("Astro UI Primary Lighten 4 Color")}

    //MARK: astroUISecondary
    static var astroUISecondary:Color
    {return astroCoreColor("Astro UI Secondary Color")}

    static var astroUISecondaryDarken1:Color
    {return astroCoreColor("Astro UI Secondary Darken 1 Color")}

    static var astroUISecondaryDarken2:Color
    {return astroCoreColor("Astro UI Secondary Darken 2 Color")}

    static var astroUISecondaryDarken3:Color
    {return astroCoreColor("Astro UI Secondary Darken 3 Color")}

    static var astroUISecondaryDarken4:Color
    {return astroCoreColor("Astro UI Secondary Darken 4 Color")}
    
    static var astroUISecondaryLighten1:Color
    {return astroCoreColor("Astro UI Secondary Lighten 1 Color")}

    static var astroUISecondaryLighten2:Color
    {return astroCoreColor("Astro UI Secondary Lighten 2 Color")}

    static var astroUISecondaryLighten3:Color
    {return astroCoreColor("Astro UI Secondary Lighten 3 Color")}

    static var astroUISecondaryLighten4:Color
    {return astroCoreColor("Astro UI Secondary Lighten 4 Color")}

    //MARK: astroUITertiary
    static var astroUITertiary:Color
    {return astroCoreColor("Astro UI Tertiary Color")}

    static var astroUITertiaryDarken1:Color
    {return astroCoreColor("Astro UI Tertiary Darken 1 Color")}

    static var astroUITertiaryDarken2:Color
    {return astroCoreColor("Astro UI Tertiary Darken 2 Color")}

    static var astroUITertiaryDarken3:Color
    {return astroCoreColor("Astro UI Tertiary Darken 3 Color")}

    static var astroUITertiaryDarken4:Color
    {return astroCoreColor("Astro UI Tertiary Darken 4 Color")}
    
    static var astroUITertiaryLighten1:Color
    {return astroCoreColor("Astro UI Tertiary Lighten 1 Color")}

    static var astroUITertiaryLighten2:Color
    {return astroCoreColor("Astro UI Tertiary Lighten 2 Color")}

    static var astroUITertiaryLighten3:Color
    {return astroCoreColor("Astro UI Tertiary Lighten 3 Color")}

    static var astroUITertiaryLighten4:Color
    {return astroCoreColor("Astro UI Tertiary Lighten 4 Color")}

    //MARK: astroUIQuaternary
    static var astroUIQuaternary:Color
    {return astroCoreColor("Astro UI Quaternary Color")}
    
    static var astroUIQuaternaryDarken1:Color
    {return astroCoreColor("Astro UI Quaternary Darken 1 Color")}

    static var astroUIQuaternaryDarken2:Color
    {return astroCoreColor("Astro UI Quaternary Darken 2 Color")}

    static var astroUIQuaternaryDarken3:Color
    {return astroCoreColor("Astro UI Quaternary Darken 3 Color")}

    static var astroUIQuaternaryDarken4:Color
    {return astroCoreColor("Astro UI Quaternary Darken 4 Color")}
    
    static var astroUIQuaternaryLighten1:Color
    {return astroCoreColor("Astro UI Quaternary Lighten 1 Color")}

    static var astroUIQuaternaryLighten2:Color
    {return astroCoreColor("Astro UI Quaternary Lighten 2 Color")}

    static var astroUIQuaternaryLighten3:Color
    {return astroCoreColor("Astro UI Quaternary Lighten 3 Color")}

    static var astroUIQuaternaryLighten4:Color
    {return astroCoreColor("Astro UI Quaternary Lighten 4 Color")}
}


// Extend UIColor and NSColor to include convenience methods to access the four core Astro color palettes
// It's unlikely that an application will need to reference these colors directly, but instead should use the semantic UI colors defined in the AstroSwiftFoundation package.
// Astro color guidelines - https://www.astrouxds.com/design-guidelines/color
//
#if os(iOS) || os(tvOS) || os(watchOS)
public extension UIColor
{
    // If an Astro color fails to load from resources, show this noticeable yellow debug color instead
    private static var astroCoreDebugColor = UIColor.yellow

    //——————————————————————————————————————————————————————————————————————————————
    // Wrap the the UIColor constructor to return a debug color instead of nil on failure
    //——————————————————————————————————————————————————————————————————————————————
    private static func astroCoreColor(named:String)->UIColor
    {
        #if os(iOS) || os(tvOS)
        return UIColor(named:named, in: .module, compatibleWith: nil) ?? astroCoreDebugColor
        #endif
        
        #if os(watchOS)
        return UIColor(named:named) ?? astroCoreDebugColor
        #endif
    }
    
    //——————————————————————————————————————————————————————————————————————————————
    // Astro Core UI colors
    //——————————————————————————————————————————————————————————————————————————————

    //MARK: astroUIPrimary
    static var astroUIPrimary:UIColor
    {return astroCoreColor(named:"Astro UI Primary Color")}
    
    static var astroUIPrimaryDarken1:UIColor
    {return astroCoreColor(named:"Astro UI Primary Darken 1 Color")}

    static var astroUIPrimaryDarken2:UIColor
    {return astroCoreColor(named:"Astro UI Primary Darken 2 Color")}

    static var astroUIPrimaryDarken3:UIColor
    {return astroCoreColor(named:"Astro UI Primary Darken 3 Color")}

    static var astroUIPrimaryDarken4:UIColor
    {return astroCoreColor(named:"Astro UI Primary Darken 4 Color")}
    
    static var astroUIPrimaryLighten1:UIColor
    {return astroCoreColor(named:"Astro UI Primary Lighten 1 Color")}

    static var astroUIPrimaryLighten2:UIColor
    {return astroCoreColor(named:"Astro UI Primary Lighten 2 Color")}

    static var astroUIPrimaryLighten3:UIColor
    {return astroCoreColor(named:"Astro UI Primary Lighten 3 Color")}

    static var astroUIPrimaryLighten4:UIColor
    {return astroCoreColor(named:"Astro UI Primary Lighten 4 Color")}

    //MARK: astroUISecondary
    static var astroUISecondary:UIColor
    {return astroCoreColor(named:"Astro UI Secondary Color")}

    static var astroUISecondaryDarken1:UIColor
    {return astroCoreColor(named:"Astro UI Secondary Darken 1 Color")}

    static var astroUISecondaryDarken2:UIColor
    {return astroCoreColor(named:"Astro UI Secondary Darken 2 Color")}

    static var astroUISecondaryDarken3:UIColor
    {return astroCoreColor(named:"Astro UI Secondary Darken 3 Color")}

    static var astroUISecondaryDarken4:UIColor
    {return astroCoreColor(named:"Astro UI Secondary Darken 4 Color")}
    
    static var astroUISecondaryLighten1:UIColor
    {return astroCoreColor(named:"Astro UI Secondary Lighten 1 Color")}

    static var astroUISecondaryLighten2:UIColor
    {return astroCoreColor(named:"Astro UI Secondary Lighten 2 Color")}

    static var astroUISecondaryLighten3:UIColor
    {return astroCoreColor(named:"Astro UI Secondary Lighten 3 Color")}

    static var astroUISecondaryLighten4:UIColor
    {return astroCoreColor(named:"Astro UI Secondary Lighten 4 Color")}

    //MARK: astroUITertiary
    static var astroUITertiary:UIColor
    {return astroCoreColor(named:"Astro UI Tertiary Color")}

    static var astroUITertiaryDarken1:UIColor
    {return astroCoreColor(named:"Astro UI Tertiary Darken 1 Color")}

    static var astroUITertiaryDarken2:UIColor
    {return astroCoreColor(named:"Astro UI Tertiary Darken 2 Color")}

    static var astroUITertiaryDarken3:UIColor
    {return astroCoreColor(named:"Astro UI Tertiary Darken 3 Color")}

    static var astroUITertiaryDarken4:UIColor
    {return astroCoreColor(named:"Astro UI Tertiary Darken 4 Color")}
    
    static var astroUITertiaryLighten1:UIColor
    {return astroCoreColor(named:"Astro UI Tertiary Lighten 1 Color")}

    static var astroUITertiaryLighten2:UIColor
    {return astroCoreColor(named:"Astro UI Tertiary Lighten 2 Color")}

    static var astroUITertiaryLighten3:UIColor
    {return astroCoreColor(named:"Astro UI Tertiary Lighten 3 Color")}

    static var astroUITertiaryLighten4:UIColor
    {return astroCoreColor(named:"Astro UI Tertiary Lighten 4 Color")}

    //MARK: astroUIQuaternary
    static var astroUIQuaternary:UIColor
    {return astroCoreColor(named:"Astro UI Quaternary Color")}
    
    static var astroUIQuaternaryDarken1:UIColor
    {return astroCoreColor(named:"Astro UI Quaternary Darken 1 Color")}

    static var astroUIQuaternaryDarken2:UIColor
    {return astroCoreColor(named:"Astro UI Quaternary Darken 2 Color")}

    static var astroUIQuaternaryDarken3:UIColor
    {return astroCoreColor(named:"Astro UI Quaternary Darken 3 Color")}

    static var astroUIQuaternaryDarken4:UIColor
    {return astroCoreColor(named:"Astro UI Quaternary Darken 4 Color")}
    
    static var astroUIQuaternaryLighten1:UIColor
    {return astroCoreColor(named:"Astro UI Quaternary Lighten 1 Color")}

    static var astroUIQuaternaryLighten2:UIColor
    {return astroCoreColor(named:"Astro UI Quaternary Lighten 2 Color")}

    static var astroUIQuaternaryLighten3:UIColor
    {return astroCoreColor(named:"Astro UI Quaternary Lighten 3 Color")}

    static var astroUIQuaternaryLighten4:UIColor
    {return astroCoreColor(named:"Astro UI Quaternary Lighten 4 Color")}
}
#endif

#if os(macOS)
public extension NSColor
{
    // If an Astro color fails to load from resources, show this noticeable yellow debug color instead
    private static var astroCoreDebugColor = NSColor.yellow

    //——————————————————————————————————————————————————————————————————————————————
    // Wrap the the NSColor constructor to return a debug color instead of nil on failure
    //——————————————————————————————————————————————————————————————————————————————
    private static func astroCoreColor(named:String)->NSColor
    {
        return NSColor(named:named) ?? astroCoreDebugColor
    }
    
    //——————————————————————————————————————————————————————————————————————————————
    // Astro Core UI colors
    //——————————————————————————————————————————————————————————————————————————————

    //MARK: astroUIPrimary
    static var astroUIPrimary:NSColor
    {return astroCoreColor(named:"Astro UI Primary Color")}
    
    static var astroUIPrimaryDarken1:NSColor
    {return astroCoreColor(named:"Astro UI Primary Darken 1 Color")}

    static var astroUIPrimaryDarken2:NSColor
    {return astroCoreColor(named:"Astro UI Primary Darken 2 Color")}

    static var astroUIPrimaryDarken3:NSColor
    {return astroCoreColor(named:"Astro UI Primary Darken 3 Color")}

    static var astroUIPrimaryDarken4:NSColor
    {return astroCoreColor(named:"Astro UI Primary Darken 4 Color")}
    
    static var astroUIPrimaryLighten1:NSColor
    {return astroCoreColor(named:"Astro UI Primary Lighten 1 Color")}

    static var astroUIPrimaryLighten2:NSColor
    {return astroCoreColor(named:"Astro UI Primary Lighten 2 Color")}

    static var astroUIPrimaryLighten3:NSColor
    {return astroCoreColor(named:"Astro UI Primary Lighten 3 Color")}

    static var astroUIPrimaryLighten4:NSColor
    {return astroCoreColor(named:"Astro UI Primary Lighten 4 Color")}

    //MARK: astroUISecondary
    static var astroUISecondary:NSColor
    {return astroCoreColor(named:"Astro UI Secondary Color")}

    static var astroUISecondaryDarken1:NSColor
    {return astroCoreColor(named:"Astro UI Secondary Darken 1 Color")}

    static var astroUISecondaryDarken2:NSColor
    {return astroCoreColor(named:"Astro UI Secondary Darken 2 Color")}

    static var astroUISecondaryDarken3:NSColor
    {return astroCoreColor(named:"Astro UI Secondary Darken 3 Color")}

    static var astroUISecondaryDarken4:NSColor
    {return astroCoreColor(named:"Astro UI Secondary Darken 4 Color")}
    
    static var astroUISecondaryLighten1:NSColor
    {return astroCoreColor(named:"Astro UI Secondary Lighten 1 Color")}

    static var astroUISecondaryLighten2:NSColor
    {return astroCoreColor(named:"Astro UI Secondary Lighten 2 Color")}

    static var astroUISecondaryLighten3:NSColor
    {return astroCoreColor(named:"Astro UI Secondary Lighten 3 Color")}

    static var astroUISecondaryLighten4:NSColor
    {return astroCoreColor(named:"Astro UI Secondary Lighten 4 Color")}

    //MARK: astroUITertiary
    static var astroUITertiary:NSColor
    {return astroCoreColor(named:"Astro UI Tertiary Color")}

    static var astroUITertiaryDarken1:NSColor
    {return astroCoreColor(named:"Astro UI Tertiary Darken 1 Color")}

    static var astroUITertiaryDarken2:NSColor
    {return astroCoreColor(named:"Astro UI Tertiary Darken 2 Color")}

    static var astroUITertiaryDarken3:NSColor
    {return astroCoreColor(named:"Astro UI Tertiary Darken 3 Color")}

    static var astroUITertiaryDarken4:NSColor
    {return astroCoreColor(named:"Astro UI Tertiary Darken 4 Color")}
    
    static var astroUITertiaryLighten1:NSColor
    {return astroCoreColor(named:"Astro UI Tertiary Lighten 1 Color")}

    static var astroUITertiaryLighten2:NSColor
    {return astroCoreColor(named:"Astro UI Tertiary Lighten 2 Color")}

    static var astroUITertiaryLighten3:NSColor
    {return astroCoreColor(named:"Astro UI Tertiary Lighten 3 Color")}

    static var astroUITertiaryLighten4:NSColor
    {return astroCoreColor(named:"Astro UI Tertiary Lighten 4 Color")}

    //MARK: astroUIQuaternary
    static var astroUIQuaternary:NSColor
    {return astroCoreColor(named:"Astro UI Quaternary Color")}
    
    static var astroUIQuaternaryDarken1:NSColor
    {return astroCoreColor(named:"Astro UI Quaternary Darken 1 Color")}

    static var astroUIQuaternaryDarken2:NSColor
    {return astroCoreColor(named:"Astro UI Quaternary Darken 2 Color")}

    static var astroUIQuaternaryDarken3:NSColor
    {return astroCoreColor(named:"Astro UI Quaternary Darken 3 Color")}

    static var astroUIQuaternaryDarken4:NSColor
    {return astroCoreColor(named:"Astro UI Quaternary Darken 4 Color")}
    
    static var astroUIQuaternaryLighten1:NSColor
    {return astroCoreColor(named:"Astro UI Quaternary Lighten 1 Color")}

    static var astroUIQuaternaryLighten2:NSColor
    {return astroCoreColor(named:"Astro UI Quaternary Lighten 2 Color")}

    static var astroUIQuaternaryLighten3:NSColor
    {return astroCoreColor(named:"Astro UI Quaternary Lighten 3 Color")}

    static var astroUIQuaternaryLighten4:NSColor
    {return astroCoreColor(named:"Astro UI Quaternary Lighten 4 Color")}
}
#endif
