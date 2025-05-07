//
//  ViewExplorar.swift
//  leae
//
//  Created by Aluno 12 on 29/04/25.
//

import SwiftUI

struct ViewExplorar: View {
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(alignment: .leading, spacing: Spacing.betweenSections) {
				let sampleHeader: String = "Sample Section"
				let sampleBooks = MockBookGenerator.mockBookArray(count: 5)
				
				BookCarousel(books: sampleBooks, header: sampleHeader)
				BookCarousel(books: sampleBooks, header: sampleHeader)
				BookCarousel(books: sampleBooks, header: sampleHeader)
				BookCarousel(books: sampleBooks, header: sampleHeader)
			}
		}
		.padding(.horizontal, Padding.mainScreen)
	}
}

struct ViewExplorar_Previews: PreviewProvider {
	static var previews: some View {
		ViewExplorar()
	}
}
