import SwiftUI

// MARK: - Padding Values
struct Padding {
	static let mainScreen: CGFloat = 20
	static let small: CGFloat = 8 // card internal padding
}

// MARK: - Spacing Values
struct Spacing {
	static let big: CGFloat = 20
	static let betweenSections: CGFloat = 16
	static let betweenItems: CGFloat = 15
	static let titleSepBody: CGFloat = 12
	static let small: CGFloat = 5 // Book cover - Title, username - review body
	static let bookcoverSepTitle: CGFloat = 5
	static let iconBox: CGFloat = 6
}

// MARK: - Corner Radius
struct CornerRadius {
	static let small: CGFloat = 6
	static let medium: CGFloat = 10
	static let large: CGFloat = 12
}

// MARK: - Color Values
extension Color {
	static let accentHighlight = Color("Highlight")
	static let backgroundBase = Color("Base")
	static let backgroundCard = Color("Card")
	static let backgroundMuted = Color("BackgroundMuted")
	static let borderDefault = Color("BorderDefault")
	static let feedbackError = Color("Error")
	static let feedbackSuccess = Color("Success")
	static let feedbackWarning = Color("Warning")
	static let primaryDefault = Color("PrimaryDefault")
	static let primaryHover = Color("Hover")
	static let primaryMuted = Color("PrimaryMuted")
	static let secundaryBackground = Color("Background")
	static let secundaryDefault = Color("SecundaryDefault")
	static let textMuted = Color("TextMuted")
	static let textPrimary = Color("Primary")
	static let textSecundary = Color("Secundary")
}


// MARK: Card Size Values
struct CardSize {
	static let mediumWidth: CGFloat = 85
	static let mediumHeight: CGFloat = 130
	static let smallWidth: CGFloat = 78
	static let smallHeight: CGFloat = 122
	static let smallSquare: CGFloat = 88
	static let bigSquare: CGFloat = 120
}



// MARK: Title Box Size Values
struct TitleBoxSize {
	static let smallWidth: CGFloat = 85
	static let smallHeight: CGFloat = 32
	static let reviewCardWidth: CGFloat = 174
	static let reviewCardHeight: CGFloat = 88
	static let sectionHeaderWidth: CGFloat = 351
	static let sectionHeaderHeight: CGFloat = 28
}

// MARK: Line Limit Values
struct LineLimit {
	static let bookTitle: Int = 2
	static let sectionHeader: Int = 1
	static let commentCard: Int = 4
}
