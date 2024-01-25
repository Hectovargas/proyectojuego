#include "botonRegistro.h"
#include <iostream>
#include <fstream>
#include <string>
#include <line_edit.hpp>

struct Registro {
    std::string nombre;
    std::string contraseña;
};

void guardarRegistro(const Registro& registro, const std::string& filename) {
    std::ofstream file(filename, std::ios::binary | std::ios::app);

    if (!file.is_open()) {
        std::cerr << "Error al abrir el archivo para escribir" << std::endl;
        return;
    }

    file.write(reinterpret_cast<const char*>(&registro), sizeof(Registro));
    file.close();
}

bool buscarRegistro(const std::string& nombre, const std::string& contraseña, const std::string& filename) {
    std::ifstream file(filename, std::ios::binary);

    if (!file.is_open()) {
        std::cerr << "Error al abrir el archivo para leer" << std::endl;
        return false;
    }

    Registro registroLeido;
    while (file.read(reinterpret_cast<char*>(&registroLeido), sizeof(Registro))) {
        if (nombre == registroLeido.nombre && contraseña == registroLeido.contraseña) {
            std::cout << "Registro encontrado" << std::endl;
            file.close();
            return true;
        }
    }

    std::cout << "Registro no encontrado" << std::endl;
    file.close();
    return false;
}


void godot::botonRegistro::_bind_methods()
{
}

godot::botonRegistro::botonRegistro()
{

}

void godot::botonRegistro::_process(double delta)
{
}

void godot::botonRegistro::_ready()
{
}
