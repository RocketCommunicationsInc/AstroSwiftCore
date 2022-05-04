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

// Extend Color, for Swift and SwiftUI, to include many convenience methods to access core Astro colors.
// It's unlikely that an application will need to reference these colors directly, but instead should use the semantic UI colors defined in the AstroSwiftFoundation package.
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

    //MARK: Dark Blue
    static var astroUIDarkBlue100:Color {astroCoreColor("Astro UI Dark Blue 100")}
    static var astroUIDarkBlue200:Color {astroCoreColor("Astro UI Dark Blue 200")}
    static var astroUIDarkBlue300:Color {astroCoreColor("Astro UI Dark Blue 300")}
    static var astroUIDarkBlue400:Color {astroCoreColor("Astro UI Dark Blue 400")}
    static var astroUIDarkBlue500:Color {astroCoreColor("Astro UI Dark Blue 500")}
    static var astroUIDarkBlue600:Color {astroCoreColor("Astro UI Dark Blue 600")}
    static var astroUIDarkBlue700:Color {astroCoreColor("Astro UI Dark Blue 700")}
    static var astroUIDarkBlue800:Color {astroCoreColor("Astro UI Dark Blue 800")}
    static var astroUIDarkBlue900:Color {astroCoreColor("Astro UI Dark Blue 900")}
    static var astroUIDarkBlue950:Color {astroCoreColor("Astro UI Dark Blue 950")} //unusual value

    //MARK: Bright Blue
    static var astroUIBrightBlue100:Color {astroCoreColor("Astro UI Bright Blue 100")}
    static var astroUIBrightBlue200:Color {astroCoreColor("Astro UI Bright Blue 200")}
    static var astroUIBrightBlue300:Color {astroCoreColor("Astro UI Bright Blue 300")}
    static var astroUIBrightBlue400:Color {astroCoreColor("Astro UI Bright Blue 400")}
    static var astroUIBrightBlue500:Color {astroCoreColor("Astro UI Bright Blue 500")}
    static var astroUIBrightBlue600:Color {astroCoreColor("Astro UI Bright Blue 600")}
    static var astroUIBrightBlue700:Color {astroCoreColor("Astro UI Bright Blue 700")}
    static var astroUIBrightBlue800:Color {astroCoreColor("Astro UI Bright Blue 800")}
    static var astroUIBrightBlue850:Color {astroCoreColor("Astro UI Bright Blue 850")} //unusual value
    static var astroUIBrightBlue900:Color {astroCoreColor("Astro UI Bright Blue 900")}

    //MARK: Grey
    static var astroUIGrey100:Color {astroCoreColor("Astro UI Grey 100")}
    static var astroUIGrey200:Color {astroCoreColor("Astro UI Grey 200")}
    static var astroUIGrey250:Color {astroCoreColor("Astro UI Grey 250")} //unusual value
    static var astroUIGrey300:Color {astroCoreColor("Astro UI Grey 300")}
    static var astroUIGrey400:Color {astroCoreColor("Astro UI Grey 400")}
    static var astroUIGrey500:Color {astroCoreColor("Astro UI Grey 500")}
    static var astroUIGrey600:Color {astroCoreColor("Astro UI Grey 600")}
    static var astroUIGrey700:Color {astroCoreColor("Astro UI Grey 700")}
    static var astroUIGrey800:Color {astroCoreColor("Astro UI Grey 800")}
    static var astroUIGrey900:Color {astroCoreColor("Astro UI Grey 900")}

    //MARK: Red
    static var astroUIRed400:Color {astroCoreColor("Astro UI Red 400")}
    static var astroUIRed500:Color {astroCoreColor("Astro UI Red 500")}
    static var astroUIRed600:Color {astroCoreColor("Astro UI Red 600")}
    static var astroUIRed700:Color {astroCoreColor("Astro UI Red 700")}
    static var astroUIRed800:Color {astroCoreColor("Astro UI Red 800")}
    static var astroUIRed900:Color {astroCoreColor("Astro UI Red 900")}

    //MARK: Orange
    static var astroUIOrange400:Color {astroCoreColor("Astro UI Orange 400")}
    static var astroUIOrange500:Color {astroCoreColor("Astro UI Orange 500")}
    static var astroUIOrange600:Color {astroCoreColor("Astro UI Orange 600")}
    static var astroUIOrange700:Color {astroCoreColor("Astro UI Orange 700")}
    static var astroUIOrange800:Color {astroCoreColor("Astro UI Orange 800")}
    static var astroUIOrange900:Color {astroCoreColor("Astro UI Orange 900")}

    //MARK: Yellow
    static var astroUIYellow400:Color {astroCoreColor("Astro UI Yellow 400")}
    static var astroUIYellow500:Color {astroCoreColor("Astro UI Yellow 500")}
    static var astroUIYellow600:Color {astroCoreColor("Astro UI Yellow 600")}
    static var astroUIYellow700:Color {astroCoreColor("Astro UI Yellow 700")}
    static var astroUIYellow800:Color {astroCoreColor("Astro UI Yellow 800")}
    static var astroUIYellow900:Color {astroCoreColor("Astro UI Yellow 900")}

    //MARK: Green
    static var astroUIGreen400:Color {astroCoreColor("Astro UI Green 400")}
    static var astroUIGreen500:Color {astroCoreColor("Astro UI Green 500")}
    static var astroUIGreen600:Color {astroCoreColor("Astro UI Green 600")}
    static var astroUIGreen700:Color {astroCoreColor("Astro UI Green 700")}
    static var astroUIGreen800:Color {astroCoreColor("Astro UI Green 800")}
    static var astroUIGreen900:Color {astroCoreColor("Astro UI Green 900")}
    
    //MARK: Cyan
    static var astroUICyan400:Color {astroCoreColor("Astro UI Cyan 400")}
    static var astroUICyan500:Color {astroCoreColor("Astro UI Cyan 500")}
    static var astroUICyan600:Color {astroCoreColor("Astro UI Cyan 600")}
    static var astroUICyan700:Color {astroCoreColor("Astro UI Cyan 700")}
    static var astroUICyan800:Color {astroCoreColor("Astro UI Cyan 800")}
    static var astroUICyan900:Color {astroCoreColor("Astro UI Cyan 900")}

    //MARK: Violet
    static var astroUIViolet800:Color {astroCoreColor("Astro UI Violet 800")}

    //MARK: Blue
    static var astroUIBlue800:Color {astroCoreColor("Astro UI Blue 800")}
    
    //MARK: Teal
    static var astroUITeal100:Color {astroCoreColor("Astro UI Teal 100")}
    static var astroUITeal200:Color {astroCoreColor("Astro UI Teal 200")}
    static var astroUITeal300:Color {astroCoreColor("Astro UI Teal 300")}
    static var astroUITeal400:Color {astroCoreColor("Astro UI Teal 400")}
    static var astroUITeal500:Color {astroCoreColor("Astro UI Teal 500")}
    static var astroUITeal600:Color {astroCoreColor("Astro UI Teal 600")}
    static var astroUITeal700:Color {astroCoreColor("Astro UI Teal 700")}
    static var astroUITeal800:Color {astroCoreColor("Astro UI Teal 800")}
    static var astroUITeal900:Color {astroCoreColor("Astro UI Teal 900")}

    
    //MARK: Purple
    static var astroUIPurple100:Color {astroCoreColor("Astro UI Purple 100")}
    static var astroUIPurple200:Color {astroCoreColor("Astro UI Purple 200")}
    static var astroUIPurple300:Color {astroCoreColor("Astro UI Purple 300")}
    static var astroUIPurple400:Color {astroCoreColor("Astro UI Purple 400")}
    static var astroUIPurple500:Color {astroCoreColor("Astro UI Purple 500")}
    static var astroUIPurple600:Color {astroCoreColor("Astro UI Purple 600")}
    static var astroUIPurple700:Color {astroCoreColor("Astro UI Purple 700")}
    static var astroUIPurple800:Color {astroCoreColor("Astro UI Purple 800")}
    static var astroUIPurple900:Color {astroCoreColor("Astro UI Purple 900")}

    //MARK: Pink
    static var astroUIPink100:Color {astroCoreColor("Astro UI Pink 100")}
    static var astroUIPink200:Color {astroCoreColor("Astro UI Pink 200")}
    static var astroUIPink300:Color {astroCoreColor("Astro UI Pink 300")}
    static var astroUIPink400:Color {astroCoreColor("Astro UI Pink 400")}
    static var astroUIPink500:Color {astroCoreColor("Astro UI Pink 500")}
    static var astroUIPink600:Color {astroCoreColor("Astro UI Pink 600")}
    static var astroUIPink700:Color {astroCoreColor("Astro UI Pink 700")}
    static var astroUIPink800:Color {astroCoreColor("Astro UI Pink 800")}
    static var astroUIPink900:Color {astroCoreColor("Astro UI Pink 900")}

    //MARK: Pink
    static var astroUIHotOrange100:Color {astroCoreColor("Astro UI Hot Orange 100")}
    static var astroUIHotOrange200:Color {astroCoreColor("Astro UI Hot Orange 200")}
    static var astroUIHotOrange300:Color {astroCoreColor("Astro UI Hot Orange 300")}
    static var astroUIHotOrange400:Color {astroCoreColor("Astro UI Hot Orange 400")}
    static var astroUIHotOrange500:Color {astroCoreColor("Astro UI Hot Orange 500")}
    static var astroUIHotOrange600:Color {astroCoreColor("Astro UI Hot Orange 600")}
    static var astroUIHotOrange700:Color {astroCoreColor("Astro UI Hot Orange 700")}
    static var astroUIHotOrange800:Color {astroCoreColor("Astro UI Hot Orange 800")}
    static var astroUIHotOrange900:Color {astroCoreColor("Astro UI Hot Orange 900")}

}


// Extend UIColor and NSColor to include convenience methods to access the core Astro color palettes
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
