/**************************************************************************/
/*  editor_node3d_gizmo.hpp                                               */
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

#ifndef GODOT_CPP_EDITOR_NODE3D_GIZMO_HPP
#define GODOT_CPP_EDITOR_NODE3D_GIZMO_HPP

#include <godot_cpp/variant/color.hpp>
#include <godot_cpp/classes/material.hpp>
#include <godot_cpp/classes/node3d_gizmo.hpp>
#include <godot_cpp/variant/packed_int32_array.hpp>
#include <godot_cpp/classes/ref.hpp>
#include <godot_cpp/classes/skin_reference.hpp>
#include <godot_cpp/variant/string.hpp>
#include <godot_cpp/variant/transform3d.hpp>
#include <godot_cpp/variant/typed_array.hpp>
#include <godot_cpp/variant/variant.hpp>

#include <godot_cpp/core/class_db.hpp>

#include <type_traits>

namespace godot {

class Camera3D;
class EditorNode3DGizmoPlugin;
class Mesh;
class Node;
class Node3D;
class PackedVector3Array;
struct Plane;
class TriangleMesh;
struct Vector2;

class EditorNode3DGizmo : public Node3DGizmo {
	GDEXTENSION_CLASS(EditorNode3DGizmo, Node3DGizmo)

public:

	void add_lines(const PackedVector3Array &lines, const Ref<Material> &material, bool billboard = false, const Color &modulate = Color(1, 1, 1, 1));
	void add_mesh(const Ref<Mesh> &mesh, const Ref<Material> &material = nullptr, const Transform3D &transform = Transform3D(), const Ref<SkinReference> &skeleton = nullptr);
	void add_collision_segments(const PackedVector3Array &segments);
	void add_collision_triangles(const Ref<TriangleMesh> &triangles);
	void add_unscaled_billboard(const Ref<Material> &material, double default_scale = 1, const Color &modulate = Color(1, 1, 1, 1));
	void add_handles(const PackedVector3Array &handles, const Ref<Material> &material, const PackedInt32Array &ids, bool billboard = false, bool secondary = false);
	void set_node_3d(Node *node);
	Node3D *get_node_3d() const;
	Ref<EditorNode3DGizmoPlugin> get_plugin() const;
	void clear();
	void set_hidden(bool hidden);
	bool is_subgizmo_selected(int32_t id) const;
	PackedInt32Array get_subgizmo_selection() const;
	virtual void _redraw();
	virtual String _get_handle_name(int32_t id, bool secondary) const;
	virtual bool _is_handle_highlighted(int32_t id, bool secondary) const;
	virtual Variant _get_handle_value(int32_t id, bool secondary) const;
	virtual void _set_handle(int32_t id, bool secondary, Camera3D *camera, const Vector2 &point);
	virtual void _commit_handle(int32_t id, bool secondary, const Variant &restore, bool cancel);
	virtual int32_t _subgizmos_intersect_ray(Camera3D *camera, const Vector2 &point) const;
	virtual PackedInt32Array _subgizmos_intersect_frustum(Camera3D *camera, const TypedArray<Plane> &frustum) const;
	virtual void _set_subgizmo_transform(int32_t id, const Transform3D &transform);
	virtual Transform3D _get_subgizmo_transform(int32_t id) const;
	virtual void _commit_subgizmos(const PackedInt32Array &ids, const TypedArray<Transform3D> &restores, bool cancel);
protected:
	template <class T, class B>
	static void register_virtuals() {
		Node3DGizmo::register_virtuals<T, B>();
		if constexpr (!std::is_same_v<decltype(&B::_redraw),decltype(&T::_redraw)>) {
			BIND_VIRTUAL_METHOD(T, _redraw);
		}
		if constexpr (!std::is_same_v<decltype(&B::_get_handle_name),decltype(&T::_get_handle_name)>) {
			BIND_VIRTUAL_METHOD(T, _get_handle_name);
		}
		if constexpr (!std::is_same_v<decltype(&B::_is_handle_highlighted),decltype(&T::_is_handle_highlighted)>) {
			BIND_VIRTUAL_METHOD(T, _is_handle_highlighted);
		}
		if constexpr (!std::is_same_v<decltype(&B::_get_handle_value),decltype(&T::_get_handle_value)>) {
			BIND_VIRTUAL_METHOD(T, _get_handle_value);
		}
		if constexpr (!std::is_same_v<decltype(&B::_set_handle),decltype(&T::_set_handle)>) {
			BIND_VIRTUAL_METHOD(T, _set_handle);
		}
		if constexpr (!std::is_same_v<decltype(&B::_commit_handle),decltype(&T::_commit_handle)>) {
			BIND_VIRTUAL_METHOD(T, _commit_handle);
		}
		if constexpr (!std::is_same_v<decltype(&B::_subgizmos_intersect_ray),decltype(&T::_subgizmos_intersect_ray)>) {
			BIND_VIRTUAL_METHOD(T, _subgizmos_intersect_ray);
		}
		if constexpr (!std::is_same_v<decltype(&B::_subgizmos_intersect_frustum),decltype(&T::_subgizmos_intersect_frustum)>) {
			BIND_VIRTUAL_METHOD(T, _subgizmos_intersect_frustum);
		}
		if constexpr (!std::is_same_v<decltype(&B::_set_subgizmo_transform),decltype(&T::_set_subgizmo_transform)>) {
			BIND_VIRTUAL_METHOD(T, _set_subgizmo_transform);
		}
		if constexpr (!std::is_same_v<decltype(&B::_get_subgizmo_transform),decltype(&T::_get_subgizmo_transform)>) {
			BIND_VIRTUAL_METHOD(T, _get_subgizmo_transform);
		}
		if constexpr (!std::is_same_v<decltype(&B::_commit_subgizmos),decltype(&T::_commit_subgizmos)>) {
			BIND_VIRTUAL_METHOD(T, _commit_subgizmos);
		}
	}

public:

};

} // namespace godot

#endif // ! GODOT_CPP_EDITOR_NODE3D_GIZMO_HPP