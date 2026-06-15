// Hawkon Personal Design System — SwiftUI tokens
// Engineer's logic, designer's eye. Primary: Airforce Blue · Accent: Sky Blue.
// Semantic colors resolve automatically for light/dark via UITraitCollection.

import SwiftUI

#if canImport(UIKit)
import UIKit
#endif

public extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        var v: UInt64 = 0; Scanner(string: s).scanHexInt64(&v)
        let r = Double((v & 0xFF0000) >> 16) / 255
        let g = Double((v & 0x00FF00) >> 8) / 255
        let b = Double(v & 0x0000FF) / 255
        self = Color(.sRGB, red: r, green: g, blue: b, opacity: 1)
    }
}

public enum HKColor {
    // ---- Primitives ----
    public enum Airforce { public static let c50=Color(hex:"EAF1F6"), c100=Color(hex:"C9DCE8"), c200=Color(hex:"9FBFD3"), c300=Color(hex:"6E9BB8"), c400=Color(hex:"41759A"), c500=Color(hex:"1B4965"), c600=Color(hex:"163C54"), c700=Color(hex:"112F43"), c800=Color(hex:"0C2232"), c900=Color(hex:"071521") }
    public enum Sky { public static let c50=Color(hex:"EEF7FC"), c100=Color(hex:"D2EAF6"), c200=Color(hex:"A9D6EC"), c300=Color(hex:"7FC1E2"), c400=Color(hex:"5FA8D3"), c500=Color(hex:"3D8FC4"), c600=Color(hex:"2E73A3"), c700=Color(hex:"245A80"), c800=Color(hex:"1A4260"), c900=Color(hex:"102B40") }
    public enum Neutral { public static let c0=Color(hex:"FFFFFF"), c50=Color(hex:"F6F8FA"), c100=Color(hex:"ECEFF3"), c200=Color(hex:"DCE3EA"), c300=Color(hex:"C2CCD6"), c400=Color(hex:"97A3B0"), c500=Color(hex:"6B7886"), c600=Color(hex:"4E5A67"), c700=Color(hex:"38424D"), c800=Color(hex:"232B33"), c900=Color(hex:"141A20"), c1000=Color(hex:"0A0E12") }
    public static let success = Color(hex:"2E9E6B")
    public static let warning = Color(hex:"E0A100")
    public static let error   = Color(hex:"D64545")
    public static let ember   = Color(hex:"E07A3F")
}

#if canImport(UIKit)
private func dyn(_ light: String, _ dark: String) -> Color {
    Color(UIColor { tc in
        UIColor(Color(hex: tc.userInterfaceStyle == .dark ? dark : light))
    })
}
#else
private func dyn(_ light: String, _ dark: String) -> Color { Color(hex: light) }
#endif

/// Theme-aware semantic tokens (auto light/dark).
public enum HKTheme {
    public static let bgCanvas        = dyn("F6F8FA","0A0E12")
    public static let bgSurface       = dyn("FFFFFF","141A20")
    public static let bgSurfaceRaised = dyn("FFFFFF","232B33")
    public static let bgSubtle        = dyn("ECEFF3","232B33")
    public static let textPrimary     = dyn("141A20","ECEFF3")
    public static let textSecondary   = dyn("4E5A67","C2CCD6")
    public static let textTertiary    = dyn("6B7886","97A3B0")
    public static let textOnAccent    = dyn("FFFFFF","071521")
    public static let borderDefault   = dyn("DCE3EA","38424D")
    public static let borderStrong    = dyn("C2CCD6","4E5A67")
    public static let accentPrimary   = dyn("1B4965","5FA8D3")
    public static let accentHover     = dyn("163C54","7FC1E2")
    public static let accentSecondary = dyn("3D8FC4","5FA8D3")
    public static let accentSubtleBg  = dyn("EAF1F6","0C2232")
    public static let accentEmber     = dyn("E07A3F","EFB084")
    public static let focusRing       = Color(hex:"5FA8D3")
    public static let statusSuccess   = dyn("2E9E6B","79C9A2")
    public static let statusWarning   = dyn("E0A100","F0CB66")
    public static let statusError     = dyn("D64545","E88B8B")
    public static let statusInfo      = dyn("3D8FC4","7FC1E2")
}

public enum HKSpace { public static let s0:CGFloat=0, s1=4, s2=8, s3=12, s4=16, s5=24, s6=32, s7=48, s8=64, s9=96 }
public enum HKRadius { public static let sm:CGFloat=6, md=10, lg=16, xl=24, full=999 }

/// Motion tokens. Use HKMotion.easeOut(_:) for standard transitions.
public enum HKMotion {
    public static let durFast: Double = 0.15
    public static let durBase: Double = 0.22
    public static let durSlow: Double = 0.35
    public static func easeOut(_ d: Double = durBase) -> Animation { .timingCurve(0.4, 0, 0.2, 1, duration: d) }
    public static func spring() -> Animation { .interpolatingSpring(stiffness: 220, damping: 22) }
}

/// Brand gradients (use as fills/backgrounds).
public enum HKGradient {
    public static let hero = LinearGradient(colors: [Color(hex:"0C2232"), Color(hex:"163C54")], startPoint: .topLeading, endPoint: .bottomTrailing)
    public static let mark = LinearGradient(colors: [Color(hex:"41759A"), Color(hex:"163C54")], startPoint: .topLeading, endPoint: .bottomTrailing)
    public static let text = LinearGradient(colors: [Color(hex:"1B4965"), Color(hex:"5FA8D3")], startPoint: .leading, endPoint: .trailing)
}
