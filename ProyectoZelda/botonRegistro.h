#pragma once
class botonRegistro
{

};
#ifndef botonRegistro_H
#define botonRegistro_H

#pragma once

#include <texture_button.hpp>

#include <packed_scene.hpp>

namespace godot {

    class botonRegistro : public TextureButton {
        GDCLASS(botonRegistro, TextureButton)

    protected:
        static void _bind_methods();

    public:
        botonRegistro();
        botonRegistro();

        void _process(double delta) override;


        void _ready() override;



        //EXPORT
    private:
        float velocityRotation{ 1 };






    };

}

#endif

