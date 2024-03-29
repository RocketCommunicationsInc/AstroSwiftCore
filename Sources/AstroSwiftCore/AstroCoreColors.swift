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

// UIColor and NSColor are similar enough that a typealias allows us to use
// the same code for both class extensions
#if canImport(UIKit)
public typealias NativeColor = UIColor
#elseif canImport(AppKit)
public typealias NativeColor = NSColor
#endif


// Extend Color for SwiftUI, to include many convenience methods to access core Astro colors.
// It's unlikely that an application will need to reference these colors directly, but instead should use the semantic UI colors defined in the AstroSwiftFoundation package.
// Astro color gudelines - https://www.astrouxds.com/design-guidelines/color
public extension Color
{
    //——————————————————————————————————————————————————————————————————————————————
    // Wrap the the Color constructor
    //——————————————————————————————————————————————————————————————————————————————
    private static func astroCoreColor(_ named:String)->Color
    {
        // The Color constructor is non-failable, so no debug color.
        // If the color fails to load it is set to white, without an error
        return Color(named, bundle: .module)
    }
    
    //——————————————————————————————————————————————————————————————————————————————
    // Astro Core UI colors
    //——————————————————————————————————————————————————————————————————————————————

    //MARK: Darkblue
    static var astroUIDarkBlue100:Color {astroCoreColor("Astro UI Darkblue 100")}
    static var astroUIDarkBlue200:Color {astroCoreColor("Astro UI Darkblue 200")}
    static var astroUIDarkBlue300:Color {astroCoreColor("Astro UI Darkblue 300")}
    static var astroUIDarkBlue400:Color {astroCoreColor("Astro UI Darkblue 400")}
    static var astroUIDarkBlue500:Color {astroCoreColor("Astro UI Darkblue 500")}
    static var astroUIDarkBlue600:Color {astroCoreColor("Astro UI Darkblue 600")}
    static var astroUIDarkBlue700:Color {astroCoreColor("Astro UI Darkblue 700")}
    static var astroUIDarkBlue800:Color {astroCoreColor("Astro UI Darkblue 800")}
    static var astroUIDarkBlue900:Color {astroCoreColor("Astro UI Darkblue 900")}
    static var astroUIDarkBlue950:Color {astroCoreColor("Astro UI Darkblue 950")} //unusual value

    //MARK: Brightblue
    static var astroUIBrightBlue100:Color {astroCoreColor("Astro UI Brightblue 100")}
    static var astroUIBrightBlue200:Color {astroCoreColor("Astro UI Brightblue 200")}
    static var astroUIBrightBlue300:Color {astroCoreColor("Astro UI Brightblue 300")}
    static var astroUIBrightBlue400:Color {astroCoreColor("Astro UI Brightblue 400")}
    static var astroUIBrightBlue500:Color {astroCoreColor("Astro UI Brightblue 500")}
    static var astroUIBrightBlue600:Color {astroCoreColor("Astro UI Brightblue 600")}
    static var astroUIBrightBlue700:Color {astroCoreColor("Astro UI Brightblue 700")}
    static var astroUIBrightBlue800:Color {astroCoreColor("Astro UI Brightblue 800")}
    static var astroUIBrightBlue850:Color {astroCoreColor("Astro UI Brightblue 850")} //unusual value
    static var astroUIBrightBlue900:Color {astroCoreColor("Astro UI Brightblue 900")}

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
    static var astroUIHotOrange100:Color {astroCoreColor("Astro UI Hotorange 100")}
    static var astroUIHotOrange200:Color {astroCoreColor("Astro UI Hotorange 200")}
    static var astroUIHotOrange300:Color {astroCoreColor("Astro UI Hotorange 300")}
    static var astroUIHotOrange400:Color {astroCoreColor("Astro UI Hotorange 400")}
    static var astroUIHotOrange500:Color {astroCoreColor("Astro UI Hotorange 500")}
    static var astroUIHotOrange600:Color {astroCoreColor("Astro UI Hotorange 600")}
    static var astroUIHotOrange700:Color {astroCoreColor("Astro UI Hotorange 700")}
    static var astroUIHotOrange800:Color {astroCoreColor("Astro UI Hotorange 800")}
    static var astroUIHotOrange900:Color {astroCoreColor("Astro UI Hotorange 900")}

}


// Extend UIColor and NSColor to include convenience methods to access the core Astro color palettes
// It's unlikely that an application will need to reference these colors directly, but instead should use the semantic UI colors defined in the AstroSwiftFoundation package.
// Astro color guidelines - https://www.astrouxds.com/design-guidelines/color
//
public extension NativeColor
{
    // If an Astro color fails to load from resources, show this noticeable yellow debug color instead
    private static var astroCoreDebugColor = NativeColor.yellow

    //——————————————————————————————————————————————————————————————————————————————
    // Wrap the the NativeColor constructor to return a debug color instead of nil on failure
    //——————————————————————————————————————————————————————————————————————————————
    private static func astroCoreColor(_ named:String)->NativeColor
    {
        #if os(iOS) || os(tvOS)
        return NativeColor(named:named, in: .module, compatibleWith: nil) ?? astroCoreDebugColor
        #endif
        
        #if os(watchOS) || os(macOS)
        return NativeColor(named:named) ?? astroCoreDebugColor
        #endif
    }
    
    //MARK: Darkblue
    static var astroUIDarkBlue100:NativeColor {astroCoreColor("Astro UI Darkblue 100")}
    static var astroUIDarkBlue200:NativeColor {astroCoreColor("Astro UI Darkblue 200")}
    static var astroUIDarkBlue300:NativeColor {astroCoreColor("Astro UI Darkblue 300")}
    static var astroUIDarkBlue400:NativeColor {astroCoreColor("Astro UI Darkblue 400")}
    static var astroUIDarkBlue500:NativeColor {astroCoreColor("Astro UI Darkblue 500")}
    static var astroUIDarkBlue600:NativeColor {astroCoreColor("Astro UI Darkblue 600")}
    static var astroUIDarkBlue700:NativeColor {astroCoreColor("Astro UI Darkblue 700")}
    static var astroUIDarkBlue800:NativeColor {astroCoreColor("Astro UI Darkblue 800")}
    static var astroUIDarkBlue900:NativeColor {astroCoreColor("Astro UI Darkblue 900")}
    static var astroUIDarkBlue950:NativeColor {astroCoreColor("Astro UI Darkblue 950")} //unusual value

    //MARK: Brightblue
    static var astroUIBrightBlue100:NativeColor {astroCoreColor("Astro UI Brightblue 100")}
    static var astroUIBrightBlue200:NativeColor {astroCoreColor("Astro UI Brightblue 200")}
    static var astroUIBrightBlue300:NativeColor {astroCoreColor("Astro UI Brightblue 300")}
    static var astroUIBrightBlue400:NativeColor {astroCoreColor("Astro UI Brightblue 400")}
    static var astroUIBrightBlue500:NativeColor {astroCoreColor("Astro UI Brightblue 500")}
    static var astroUIBrightBlue600:NativeColor {astroCoreColor("Astro UI Brightblue 600")}
    static var astroUIBrightBlue700:NativeColor {astroCoreColor("Astro UI Brightblue 700")}
    static var astroUIBrightBlue800:NativeColor {astroCoreColor("Astro UI Brightblue 800")}
    static var astroUIBrightBlue850:NativeColor {astroCoreColor("Astro UI Brightblue 850")} //unusual value
    static var astroUIBrightBlue900:NativeColor {astroCoreColor("Astro UI Brightblue 900")}

    //MARK: Grey
    static var astroUIGrey100:NativeColor {astroCoreColor("Astro UI Grey 100")}
    static var astroUIGrey200:NativeColor {astroCoreColor("Astro UI Grey 200")}
    static var astroUIGrey250:NativeColor {astroCoreColor("Astro UI Grey 250")} //unusual value
    static var astroUIGrey300:NativeColor {astroCoreColor("Astro UI Grey 300")}
    static var astroUIGrey400:NativeColor {astroCoreColor("Astro UI Grey 400")}
    static var astroUIGrey500:NativeColor {astroCoreColor("Astro UI Grey 500")}
    static var astroUIGrey600:NativeColor {astroCoreColor("Astro UI Grey 600")}
    static var astroUIGrey700:NativeColor {astroCoreColor("Astro UI Grey 700")}
    static var astroUIGrey800:NativeColor {astroCoreColor("Astro UI Grey 800")}
    static var astroUIGrey900:NativeColor {astroCoreColor("Astro UI Grey 900")}

    //MARK: Red
    static var astroUIRed400:NativeColor {astroCoreColor("Astro UI Red 400")}
    static var astroUIRed500:NativeColor {astroCoreColor("Astro UI Red 500")}
    static var astroUIRed600:NativeColor {astroCoreColor("Astro UI Red 600")}
    static var astroUIRed700:NativeColor {astroCoreColor("Astro UI Red 700")}
    static var astroUIRed800:NativeColor {astroCoreColor("Astro UI Red 800")}
    static var astroUIRed900:NativeColor {astroCoreColor("Astro UI Red 900")}

    //MARK: Orange
    static var astroUIOrange400:NativeColor {astroCoreColor("Astro UI Orange 400")}
    static var astroUIOrange500:NativeColor {astroCoreColor("Astro UI Orange 500")}
    static var astroUIOrange600:NativeColor {astroCoreColor("Astro UI Orange 600")}
    static var astroUIOrange700:NativeColor {astroCoreColor("Astro UI Orange 700")}
    static var astroUIOrange800:NativeColor {astroCoreColor("Astro UI Orange 800")}
    static var astroUIOrange900:NativeColor {astroCoreColor("Astro UI Orange 900")}

    //MARK: Yellow
    static var astroUIYellow400:NativeColor {astroCoreColor("Astro UI Yellow 400")}
    static var astroUIYellow500:NativeColor {astroCoreColor("Astro UI Yellow 500")}
    static var astroUIYellow600:NativeColor {astroCoreColor("Astro UI Yellow 600")}
    static var astroUIYellow700:NativeColor {astroCoreColor("Astro UI Yellow 700")}
    static var astroUIYellow800:NativeColor {astroCoreColor("Astro UI Yellow 800")}
    static var astroUIYellow900:NativeColor {astroCoreColor("Astro UI Yellow 900")}

    //MARK: Green
    static var astroUIGreen400:NativeColor {astroCoreColor("Astro UI Green 400")}
    static var astroUIGreen500:NativeColor {astroCoreColor("Astro UI Green 500")}
    static var astroUIGreen600:NativeColor {astroCoreColor("Astro UI Green 600")}
    static var astroUIGreen700:NativeColor {astroCoreColor("Astro UI Green 700")}
    static var astroUIGreen800:NativeColor {astroCoreColor("Astro UI Green 800")}
    static var astroUIGreen900:NativeColor {astroCoreColor("Astro UI Green 900")}
    
    //MARK: Cyan
    static var astroUICyan400:NativeColor {astroCoreColor("Astro UI Cyan 400")}
    static var astroUICyan500:NativeColor {astroCoreColor("Astro UI Cyan 500")}
    static var astroUICyan600:NativeColor {astroCoreColor("Astro UI Cyan 600")}
    static var astroUICyan700:NativeColor {astroCoreColor("Astro UI Cyan 700")}
    static var astroUICyan800:NativeColor {astroCoreColor("Astro UI Cyan 800")}
    static var astroUICyan900:NativeColor {astroCoreColor("Astro UI Cyan 900")}

    //MARK: Violet
    static var astroUIViolet800:NativeColor {astroCoreColor("Astro UI Violet 800")}

    //MARK: Blue
    static var astroUIBlue800:NativeColor {astroCoreColor("Astro UI Blue 800")}
    
    //MARK: Teal
    static var astroUITeal100:NativeColor {astroCoreColor("Astro UI Teal 100")}
    static var astroUITeal200:NativeColor {astroCoreColor("Astro UI Teal 200")}
    static var astroUITeal300:NativeColor {astroCoreColor("Astro UI Teal 300")}
    static var astroUITeal400:NativeColor {astroCoreColor("Astro UI Teal 400")}
    static var astroUITeal500:NativeColor {astroCoreColor("Astro UI Teal 500")}
    static var astroUITeal600:NativeColor {astroCoreColor("Astro UI Teal 600")}
    static var astroUITeal700:NativeColor {astroCoreColor("Astro UI Teal 700")}
    static var astroUITeal800:NativeColor {astroCoreColor("Astro UI Teal 800")}
    static var astroUITeal900:NativeColor {astroCoreColor("Astro UI Teal 900")}

    
    //MARK: Purple
    static var astroUIPurple100:NativeColor {astroCoreColor("Astro UI Purple 100")}
    static var astroUIPurple200:NativeColor {astroCoreColor("Astro UI Purple 200")}
    static var astroUIPurple300:NativeColor {astroCoreColor("Astro UI Purple 300")}
    static var astroUIPurple400:NativeColor {astroCoreColor("Astro UI Purple 400")}
    static var astroUIPurple500:NativeColor {astroCoreColor("Astro UI Purple 500")}
    static var astroUIPurple600:NativeColor {astroCoreColor("Astro UI Purple 600")}
    static var astroUIPurple700:NativeColor {astroCoreColor("Astro UI Purple 700")}
    static var astroUIPurple800:NativeColor {astroCoreColor("Astro UI Purple 800")}
    static var astroUIPurple900:NativeColor {astroCoreColor("Astro UI Purple 900")}

    //MARK: Pink
    static var astroUIPink100:NativeColor {astroCoreColor("Astro UI Pink 100")}
    static var astroUIPink200:NativeColor {astroCoreColor("Astro UI Pink 200")}
    static var astroUIPink300:NativeColor {astroCoreColor("Astro UI Pink 300")}
    static var astroUIPink400:NativeColor {astroCoreColor("Astro UI Pink 400")}
    static var astroUIPink500:NativeColor {astroCoreColor("Astro UI Pink 500")}
    static var astroUIPink600:NativeColor {astroCoreColor("Astro UI Pink 600")}
    static var astroUIPink700:NativeColor {astroCoreColor("Astro UI Pink 700")}
    static var astroUIPink800:NativeColor {astroCoreColor("Astro UI Pink 800")}
    static var astroUIPink900:NativeColor {astroCoreColor("Astro UI Pink 900")}

    //MARK: Pink
    static var astroUIHotOrange100:NativeColor {astroCoreColor("Astro UI Hotorange 100")}
    static var astroUIHotOrange200:NativeColor {astroCoreColor("Astro UI Hotorange 200")}
    static var astroUIHotOrange300:NativeColor {astroCoreColor("Astro UI Hotorange 300")}
    static var astroUIHotOrange400:NativeColor {astroCoreColor("Astro UI Hotorange 400")}
    static var astroUIHotOrange500:NativeColor {astroCoreColor("Astro UI Hotorange 500")}
    static var astroUIHotOrange600:NativeColor {astroCoreColor("Astro UI Hotorange 600")}
    static var astroUIHotOrange700:NativeColor {astroCoreColor("Astro UI Hotorange 700")}
    static var astroUIHotOrange800:NativeColor {astroCoreColor("Astro UI Hotorange 800")}
    static var astroUIHotOrange900:NativeColor {astroCoreColor("Astro UI Hotorange 900")}


    
    //——————————————————————————————————————————————————————————————————————————————
    // OLD Astro Core UI colors
    //——————————————————————————————————————————————————————————————————————————————
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIPrimary:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIPrimaryDarken1:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIPrimaryDarken2:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIPrimaryDarken3:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIPrimaryDarken4:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIPrimaryLighten1:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIPrimaryLighten2:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIPrimaryLighten3:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIPrimaryLighten4:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUISecondary:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUISecondaryDarken1:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUISecondaryDarken2:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUISecondaryDarken3:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUISecondaryDarken4:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUISecondaryLighten1:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUISecondaryLighten2:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUISecondaryLighten3:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUISecondaryLighten4:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUITertiary:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUITertiaryDarken1:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUITertiaryDarken2:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUITertiaryDarken3:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUITertiaryDarken4:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUITertiaryLighten1:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUITertiaryLighten2:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUITertiaryLighten3:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUITertiaryLighten4:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIQuaternary:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIQuaternaryDarken1:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIQuaternaryDarken2:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIQuaternaryDarken3:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIQuaternaryDarken4:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIQuaternaryLighten1:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIQuaternaryLighten2:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIQuaternaryLighten3:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
    @available(*, unavailable, message: "All Core Colors have been renamed as: Astro UI theColor NNN")
    static var astroUIQuaternaryLighten4:NativeColor
    {return astroCoreColor("Unavailable")} // will never run, here for compiler demands
}

