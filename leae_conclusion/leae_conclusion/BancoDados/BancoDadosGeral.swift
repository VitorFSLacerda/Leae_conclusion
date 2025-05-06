//import Foundation
//
//var comentarios: [Comentario] = [
//    Comentario(
//        livro: livros[0], // The Great Gatsby
//        usuario: usuarios[0], // Joãozinho
//        texto: "Estou adorando o mistério! Mal posso esperar para ver o desfecho.",
//        curtidas: 10,
//        comentarios: []
//    ),
//    Comentario(
//        livro: livros[1], // To Kill a Mockingbird
//        usuario: usuarios[1], // Maria123
//        texto: "Não comecei ainda, mas estou ansiosa para a leitura.",
//        curtidas: 5,
//        comentarios: []
//    ),
//    Comentario(
//        livro: livros[2], // 1984
//        usuario: usuarios[2], // PedroP
//        texto: "Acabei o livro! Excelente! Amei o final.",
//        curtidas: 15,
//        comentarios: []
//    ),
//    Comentario(
//        livro: livros[3], // The Hobbit
//        usuario: usuarios[3], // LucasM
//        texto: "Estou começando a ler, espero que seja uma boa aventura.",
//        curtidas: 8,
//        comentarios: []
//    ),
//    Comentario(
//        livro: livros[4], // The Secret Garden
//        usuario: usuarios[4], // AnaP
//        texto: "Ainda estou no começo, mas a história é bem encantadora.",
//        curtidas: 12,
//        comentarios: []
//    )
//]
//
//var usuarios: [Usuario] = [
//      Usuario(
//        foto: "",
//        apelido: "Joãozinho",
//        nome: "João da Silva",
//        email: "joao.silva@gmail.com",
//        senha: "senhaSecreta123",
//        livroAtual: livros[0], // livro "The Great Gatsby"
//        gruposUsuario: [grupos[0], grupos[4]], // Joãozinho pertence ao "Clube Gatsby" e "Fãs da Princesinha"
//        missoes: nil,
//        comentarios: [comentarios[0], comentarios[4]] // Joãozinho comentou no livro "The Great Gatsby" e "The Secret Garden"
//      ),
//      Usuario(
//        foto: "",
//        apelido: "Maria123",
//        nome: "Maria Oliveira",
//        email: "maria.oliveira@gmail.com",
//        senha: "senhaSegura456",
//        livroAtual: livros[1], // livro "To Kill a Mockingbird"
//        gruposUsuario: [grupos[1]], // Maria123 pertence ao "Leitores da Mockingbird"
//        missoes: nil,
//        comentarios: [comentarios[1]] // Maria123 comentou no livro "To Kill a Mockingbird"
//      ),
//      Usuario(
//        foto: "",
//        apelido: "PedroP",
//        nome: "Pedro Santos",
//        email: "pedro.santos@gmail.com",
//        senha: "senhaTop789",
//        livroAtual: livros[2], // livro "1984"
//        gruposUsuario: [grupos[2]], // PedroP pertence ao "Orwellianos"
//        missoes: nil,
//        comentarios: [comentarios[2]] // PedroP comentou no livro "1984"
//      ),
//      Usuario(
//        foto: "",
//        apelido: "LucasM",
//        nome: "Lucas Martins",
//        email: "lucas.martins@example.com",
//        senha: "senhaForte321",
//        livroAtual: livros[3], // livro "The Hobbit"
//        gruposUsuario: [grupos[3]], // LucasM pertence ao "Tolkien e Aventuras"
//        missoes: nil,
//        comentarios: [comentarios[3]] // LucasM comentou no livro "The Hobbit"
//      ),
//      Usuario(
//        foto: "",
//        apelido: "AnaP",
//        nome: "Ana Paula",
//        email: "ana.paula@example.com",
//        senha: "senhaSuperSegura987",
//        livroAtual: livros[4], // livro "The Secret Garden"
//        gruposUsuario: [grupos[4]], // AnaP pertence ao "Fãs da Princesinha"
//        missoes: nil,
//        comentarios: [comentarios[4]] // AnaP comentou no livro "The Secret Garden"
//      )
//]
//
//
//var livros: [Livro] = [
//    Livro(titulo: "The Great Gatsby",
//            autor: "F. Scott Fitzgerald",
//            genero: "Mystery",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 392,
//            status: "Finished",
//            rating: 5,
//            porcentagemLido: 100),
//    Livro(titulo: "To Kill a Mockingbird",
//            autor: "Harper Lee",
//            genero: "Fantasy",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 483,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 92),
//    Livro(titulo: "1984",
//            autor: "George Orwell",
//            genero: "Adventure",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 412,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 6),
//    Livro(titulo: "Pride and Prejudice",
//            autor: "Jane Austen",
//            genero: "Drama",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 361,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 29),
//    Livro(titulo: "The Catcher in the Rye",
//            autor: "J.D. Salinger",
//            genero: "Mystery",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 459,
//            status: "Finished",
//            rating: 5,
//            porcentagemLido: 100),
//    Livro(titulo: "The Hobbit",
//            autor: "J.R.R. Tolkien",
//            genero: "Adventure",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 218,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 53),
//    Livro(titulo: "The Book Thief",
//            autor: "Markus Zusak",
//            genero: "Classic",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 259,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 1),
//    Livro(titulo: "The Alchemist",
//            autor: "Paulo Coelho",
//            genero: "Drama",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 362,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 29),
//    Livro(titulo: "The Kite Runner",
//            autor: "Khaled Hosseini",
//            genero: "Classic",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 406,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 82),
//    Livro(titulo: "The Little Prince",
//            autor: "Antoine de Saint-Exupéry",
//            genero: "Classic",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 385,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 27),
//    Livro(titulo: "Brave New World",
//            autor: "Aldous Huxley",
//            genero: "Adventure",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 422,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 86),
//    Livro(titulo: "Animal Farm",
//            autor: "George Orwell",
//            genero: "Young Adult",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 420,
//            status: "Finished",
//            rating: 1,
//            porcentagemLido: 100),
//    Livro(titulo: "Jane Eyre",
//            autor: "Charlotte Brontë",
//            genero: "Fantasy",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 165,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 57),
//    Livro(titulo: "Fahrenheit 451",
//            autor: "Ray Bradbury",
//            genero: "Drama",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 364,
//            status: "Finished",
//            rating: 3,
//            porcentagemLido: 100),
//    Livro(titulo: "The Giver",
//            autor: "Lois Lowry",
//            genero: "Classic",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 485,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 37),
//    Livro(titulo: "Anne of Green Gables",
//            autor: "L.M. Montgomery",
//            genero: "Mystery",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 500,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 6),
//    Livro(titulo: "The Secret Garden",
//            autor: "Frances Hodgson Burnett",
//            genero: "Mystery",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 152,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 73),
//    Livro(titulo: "Charlotte's Web",
//            autor: "E.B. White",
//            genero: "Drama",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 359,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 87),
//    Livro(titulo: "Coraline",
//            autor: "Neil Gaiman",
//            genero: "Mystery",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 416,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 73),
//    Livro(titulo: "Wonder",
//            autor: "R.J. Palacio",
//            genero: "Science Fiction",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 225,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 24),
//    Livro(titulo: "Murder on the Orient Express",
//            autor: "Agatha Christie",
//            genero: "Drama",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 178,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 92),
//    Livro(titulo: "The Maze Runner",
//            autor: "James Dashner",
//            genero: "Fiction",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 150,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 37),
//    Livro(titulo: "The Hunger Games",
//            autor: "Suzanne Collins",
//            genero: "Drama",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 353,
//            status: "Finished",
//            rating: 4,
//            porcentagemLido: 100),
//    Livro(titulo: "Divergent",
//            autor: "Veronica Roth",
//            genero: "Classic",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 328,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 74),
//    Livro(titulo: "Percy Jackson and the Lightning Thief",
//            autor: "Rick Riordan",
//            genero: "Adventure",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 166,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 23),
//    Livro(titulo: "Twilight",
//            autor: "Stephenie Meyer",
//            genero: "Fantasy",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 466,
//            status: "Finished",
//            rating: 4,
//            porcentagemLido: 100),
//    Livro(titulo: "Looking for Alaska",
//            autor: "John Green",
//            genero: "Fantasy",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 462,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 92),
//    Livro(titulo: "The Fault in Our Stars",
//            autor: "John Green",
//            genero: "Young Adult",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 317,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 35),
//    Livro(titulo: "Paper Towns",
//            autor: "John Green",
//            genero: "Drama",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 421,
//            status: "Reading",
//            rating: nil,
//            porcentagemLido: 25),
//    Livro(titulo: "The Outsiders",
//            autor: "S.E. Hinton",
//            genero: "Drama",
//            sinopse: "",
//            imagemCapa: "",
//            qtdPaginas: 343,
//            status: "Not Started",
//            rating: nil,
//            porcentagemLido: 55)
//]
//
//var grupos: [Grupo] = [
//    Grupo(
//        nome: "Clube Gatsby",
//        descricao: "Discussões sobre a riqueza, romance e tragédia de Gatsby.",
//        livro: livros[0], // livroTheGreatGatsby
//        usuarios: [usuarios[0], usuarios[2]], // Joãozinho, PedroP
//        imagem: "",
//        lider: usuarios[0], // Joãozinho
//        missoes: []
//    ),
//    Grupo(
//        nome: "Leitores da Mockingbird",
//        descricao: "Debates sobre justiça e infância no sul dos EUA.",
//        livro: livros[1], // livroToKillAMockingbird
//        usuarios: [usuarios[1], usuarios[3]], // Maria123, LucasM
//        imagem: "",
//        lider: usuarios[1], // Maria123
//        missoes: []
//    ),
//    Grupo(
//        nome: "Orwellianos",
//        descricao: "Análises das distopias criadas por George Orwell.",
//        livro: livros[2], // livro1984
//        usuarios: [usuarios[2], usuarios[4]], // PedroP, AnaP
//        imagem: "",
//        lider: usuarios[2], // PedroP
//        missoes: []
//    ),
//    Grupo(
//        nome: "Tolkien e Aventuras",
//        descricao: "Explorando o mundo fantástico de Tolkien.",
//        livro: livros[3], // livroTheHobbit
//        usuarios: [usuarios[3]], // LucasM
//        imagem: "",
//        lider: usuarios[3], // LucasM
//        missoes: []
//    ),
//    Grupo(
//        nome: "Fãs da Princesinha",
//        descricao: "Grupo dedicado à troca de experiências sobre clássicos infantojuvenis.",
//        livro: livros[4], // livroTheSecretGarden
//        usuarios: [usuarios[0], usuarios[4]], // Joãozinho, AnaP
//        imagem: "",
//        lider: usuarios[0], // Joãozinho
//        missoes: []
//    )
//]
//
