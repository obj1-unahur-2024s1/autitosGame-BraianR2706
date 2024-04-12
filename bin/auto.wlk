import wollok.game.*

object auto {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoRojo.png"
	var property position = game.origin()
	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method posicion(nuevaPosicion) { position = nuevaPosicion }
	method mensajeChoque() = "Tengo que ir con mas cuidado"

	
}

object obstaculo{
	var image = "paredLadrillos2.jpg"
	var position = game.at(4,5)
	method image() = image
	method position() = position
	
	method moverAleatorio(){
		const x = 4.randomUpTo(game.width()).truncate(0)
		const y= 3.randomUpTo(game.height()).truncate(0)
		position = game.at(x,y)
	}
}
