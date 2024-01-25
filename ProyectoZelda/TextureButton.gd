# Registro.gd

# Importar la clase File
extends Node
# El nombre del registro
var nombre: String = ""

# La contraseña del registro
var contraseña: String = ""

# Guarda el registro en un archivo binario
func guardar():
	# Abre el archivo binario
	var archivo = File.new("registros.bin")
	archivo.open("proyectojuego/ProyectoZelda/registro","w")

	# Escribe el nombre del registro
	archivo.write(nombre)

	# Escribe la contraseña del registro
	archivo.write(contraseña)

	# Cierra el archivo binario
	archivo.close()

# Carga el registro de un archivo binario
func cargar():
	# Abre el archivo binario
	var archivo = File.new("registros.bin")
	archivo.open("r")

	# Lee el nombre del registro
	nombre = archivo.read_string()

	# Lee la contraseña del registro
	contraseña = archivo.read_string()

	# Cierra el archivo binario
	archivo.close()
