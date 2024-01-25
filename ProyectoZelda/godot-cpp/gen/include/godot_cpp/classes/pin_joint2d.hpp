/**************************************************************************/
/*  pin_joint2d.hpp                                                       */
/**************************************************************************/
/*                         This file is part of:                          */
/*                             GODOT ENGINE                               */
/*                        https://godotengine.org                         */
/**************************************************************************/
/* Copyright (c) 2014-present Godot Engine contributors (see AUTHORS.md). */
/* Copyright (c) 2007-2014 Juan Linietsky, Ariel Manzur.                  */
/*                                                                        */
/* Permission is hereby granted, free of charge, to any person obtaining  */
/* a copy of this software and associated documentation files (the        */
/* "Software"), to deal in the Software without restriction, including    */
/* without limitation the rights to use, copy, modify, merge, publish,    */
/* distribute, sublicense, and/or sell copies of the Software, and to     */
/* permit persons to whom the Software is furnished to do so, subject to  */
/* the following conditions:                                              */
/*                                                                        */
/* The above copyright notice and this permission notice shall be         */
/* included in all copies or substantial portions of the Software.        */
/*                                                                        */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,        */
/* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF     */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. */
/* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY   */
/* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,   */
/* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE      */
/* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                 */
/**************************************************************************/

// THIS FILE IS GENERATED. EDITS WILL BE LOST.

#ifndef GODOT_CPP_PIN_JOINT2D_HPP
#define GODOT_CPP_PIN_JOINT2D_HPP

#include <godot_cpp/classes/joint2d.hpp>

#include <godot_cpp/core/class_db.hpp>

#include <type_traits>

namespace godot {

class PinJoint2D : public Joint2D {
	GDEXTENSION_CLASS(PinJoint2D, Joint2D)

public:

	void set_softness(double softness);
	double get_softness() const;
	void set_angular_limit_lower(double angular_limit_lower);
	double get_angular_limit_lower() const;
	void set_angular_limit_upper(double angular_limit_upper);
	double get_angular_limit_upper() const;
	void set_motor_target_velocity(double motor_target_velocity);
	double get_motor_target_velocity() const;
	void set_motor_enabled(bool enabled);
	bool is_motor_enabled() const;
	void set_angular_limit_enabled(bool enabled);
	bool is_angular_limit_enabled() const;
protected:
	template <class T, class B>
	static void register_virtuals() {
		Joint2D::register_virtuals<T, B>();
	}

public:

};

} // namespace godot

#endif // ! GODOT_CPP_PIN_JOINT2D_HPP