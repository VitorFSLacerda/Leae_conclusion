//
//  CommentOnGroup.swift
//  leae
//
//  Created by Aluno 12 on 05/05/25.
//

import SwiftUI

struct CommentOnGroup: View {
	let comment: Comentario
	
    var body: some View {
		VStack {
			NickAndProgress(comment: comment)
			Text(comment.texto)
				.font(.caption)
				.foregroundColor(.textPrimary)
		}
    }
}

struct CommentOnGroup_Previews: PreviewProvider {
    static var previews: some View {
		let comentario1 = comentarios[0]
        CommentOnGroup(comment: comentario1)
    }
}
