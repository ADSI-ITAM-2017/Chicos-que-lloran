us1 = Usuario.create! id: 1, nombre: "Rodrigo", email: "rodrigoferrerb@gmail.com", password_digest:"lol"
us1 = Usuario.create! id: 2, nombre: "Gil", email: "gil@gmail.com", password_digest:"lol"
casa1 = Propiedad.create! direccion: "Tizapan 32", precio: 1000.0, descripcion: "Bonito depto. con vista al mar.", usuario_id: "1"
casa1 = Propiedad.create! direccion: "Tizapan 33", precio: 1200.0, descripcion: "Bonito depto. con muy buena vista al mar.", usuario_id: "2"