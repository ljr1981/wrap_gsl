note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class GSL_INTERP_FUNCTIONS_API

feature -- Access

	gsl_interp_accel_alloc: detachable GSL_INTERP_ACCEL_STRUCT_API
		do
			if attached c_gsl_interp_accel_alloc as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		end

	gsl_interp_accel_reset (a: GSL_INTERP_ACCEL_STRUCT_API): INTEGER
		do
			Result := c_gsl_interp_accel_reset (a.item)
		end

	gsl_interp_accel_free (a: GSL_INTERP_ACCEL_STRUCT_API)
		do
			c_gsl_interp_accel_free (a.item)
		end

	gsl_interp_alloc (t: GSL_INTERP_TYPE_STRUCT_API; n: INTEGER): detachable GSL_INTERP_STRUCT_API
		do
			if attached c_gsl_interp_alloc (t.item, n) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	gsl_interp_init (obj: GSL_INTERP_STRUCT_API; xa: ARRAY [REAL_64]; ya: ARRAY [REAL_64]; size: INTEGER): INTEGER
		do
			Result := c_gsl_interp_init (obj.item, xa.area.base_address, ya.area.base_address, size)
		end

	gsl_interp_name (interp: GSL_INTERP_STRUCT_API): STRING
		local
			l_ptr: POINTER
		do
			Result := "Unkown"
			l_ptr := c_gsl_interp_name (interp.item)
			if l_ptr /= default_pointer then
				create Result.make_from_c (l_ptr)
			end
		end

	gsl_interp_min_size (interp: GSL_INTERP_STRUCT_API): INTEGER
		do
			Result := c_gsl_interp_min_size (interp.item)
		end

	gsl_interp_type_min_size (t: GSL_INTERP_TYPE_STRUCT_API): INTEGER
		do
			Result := c_gsl_interp_type_min_size (t.item)
		end

	gsl_interp_eval_e (obj: GSL_INTERP_STRUCT_API; xa: ARRAY [REAL_64]; ya: ARRAY [REAL_64]; x: REAL_64; a: GSL_INTERP_ACCEL_STRUCT_API; y: POINTER): INTEGER
		do
			Result := c_gsl_interp_eval_e (obj.item, xa.area.base_address, ya.area.base_address, x, a.item, y)
		end

	gsl_interp_eval (obj: GSL_INTERP_STRUCT_API; xa: ARRAY [REAL_64]; ya: ARRAY [REAL_64]; x: REAL_64; a: GSL_INTERP_ACCEL_STRUCT_API): REAL_64
		do
			Result := c_gsl_interp_eval (obj.item, xa.area.base_address, ya.area.base_address, x, a.item)
		end

	gsl_interp_eval_deriv_e (obj: GSL_INTERP_STRUCT_API; xa: ARRAY [REAL_64]; ya: ARRAY [REAL_64]; x: REAL_64; a: GSL_INTERP_ACCEL_STRUCT_API; d: POINTER): INTEGER
		do
			Result := c_gsl_interp_eval_deriv_e (obj.item, xa.area.base_address, ya.area.base_address, x, a.item, d)
		end

	gsl_interp_eval_deriv (obj: GSL_INTERP_STRUCT_API; xa: ARRAY [REAL_64]; ya: ARRAY [REAL_64]; x: REAL_64; a: GSL_INTERP_ACCEL_STRUCT_API): REAL_64
		do
			Result := c_gsl_interp_eval_deriv (obj.item, xa.area.base_address, ya.area.base_address, x, a.item)
		end

	gsl_interp_eval_deriv2_e (obj: GSL_INTERP_STRUCT_API; xa: ARRAY [REAL_64]; ya: ARRAY [REAL_64]; x: REAL_64; a: GSL_INTERP_ACCEL_STRUCT_API; d2: POINTER): INTEGER
		do
			Result := c_gsl_interp_eval_deriv2_e (obj.item, xa.area.base_address, ya.area.base_address, x, a.item, d2)
		end

	gsl_interp_eval_deriv2 (obj: GSL_INTERP_STRUCT_API; xa: ARRAY [REAL_64]; ya: ARRAY [REAL_64]; x: REAL_64; a: GSL_INTERP_ACCEL_STRUCT_API): REAL_64
		do
			Result := c_gsl_interp_eval_deriv2 (obj.item, xa.area.base_address, ya.area.base_address, x, a.item)
		end

	gsl_interp_eval_integ_e (obj: GSL_INTERP_STRUCT_API; xa: ARRAY [REAL_64]; ya: ARRAY [REAL_64]; a: REAL_64; b: REAL_64; acc: GSL_INTERP_ACCEL_STRUCT_API; a_result: POINTER): INTEGER
		do
			Result := c_gsl_interp_eval_integ_e (obj.item, xa.area.base_address, ya.area.base_address, a, b, acc.item, a_result)
		end

	gsl_interp_eval_integ (obj: GSL_INTERP_STRUCT_API; xa: ARRAY [REAL_64]; ya: ARRAY [REAL_64]; a: REAL_64; b: REAL_64; acc: GSL_INTERP_ACCEL_STRUCT_API): REAL_64
		do
			Result := c_gsl_interp_eval_integ (obj.item, xa.area.base_address, ya.area.base_address, a, b, acc.item)
		end

	gsl_interp_free (interp: GSL_INTERP_STRUCT_API)
		do
			c_gsl_interp_free (interp.item)
		end

	gsl_interp_bsearch (x_array: ARRAY [REAL_64]; x: REAL_64; index_lo: INTEGER; index_hi: INTEGER): INTEGER
		do
			Result := c_gsl_interp_bsearch (x_array.area.base_address, x, index_lo, index_hi)
		end

	gsl_interp_accel_find (a: GSL_INTERP_ACCEL_STRUCT_API; x_array: ARRAY [REAL_64]; size: INTEGER; x: REAL_64): INTEGER
		do
			Result := c_gsl_interp_accel_find (a.item, x_array.area.base_address, size, x)
		end

feature -- Externals

	c_gsl_interp_accel_alloc: POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_accel_alloc ();
			]"
		end

	c_gsl_interp_accel_reset (a: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_accel_reset ((gsl_interp_accel*)$a);
			]"
		end

	c_gsl_interp_accel_free (a: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_interp_accel_free ((gsl_interp_accel*)$a);
			]"
		end

	c_gsl_interp_alloc (t: POINTER; n: INTEGER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_alloc ((gsl_interp_type const*)$t, (size_t)$n);
			]"
		end

	c_gsl_interp_init (obj: POINTER; xa: POINTER; ya: POINTER; size: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_init ((gsl_interp*)$obj, $xa, $ya, (size_t)$size);
			]"
		end

	c_gsl_interp_name (interp: POINTER): POINTER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_name ((gsl_interp const*)$interp);
			]"
		end

	c_gsl_interp_min_size (interp: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_min_size ((gsl_interp const*)$interp);
			]"
		end

	c_gsl_interp_type_min_size (t: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_type_min_size ((gsl_interp_type const*)$t);
			]"
		end

	c_gsl_interp_eval_e (obj: POINTER; xa: POINTER; ya: POINTER; x: REAL_64; a: POINTER; y: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_eval_e ((gsl_interp const*)$obj, $xa, $ya, (double)$x, (gsl_interp_accel*)$a, (double*)$y);
			]"
		end

	c_gsl_interp_eval (obj: POINTER; xa: POINTER; ya: POINTER; x: REAL_64; a: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_eval ((gsl_interp const*)$obj, $xa, $ya, (double)$x, (gsl_interp_accel*)$a);
			]"
		end

	c_gsl_interp_eval_deriv_e (obj: POINTER; xa: POINTER; ya: POINTER; x: REAL_64; a: POINTER; d: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_eval_deriv_e ((gsl_interp const*)$obj, $xa, $ya, (double)$x, (gsl_interp_accel*)$a, (double*)$d);
			]"
		end

	c_gsl_interp_eval_deriv (obj: POINTER; xa: POINTER; ya: POINTER; x: REAL_64; a: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_eval_deriv ((gsl_interp const*)$obj, $xa, $ya, (double)$x, (gsl_interp_accel*)$a);
			]"
		end

	c_gsl_interp_eval_deriv2_e (obj: POINTER; xa: POINTER; ya: POINTER; x: REAL_64; a: POINTER; d2: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_eval_deriv2_e ((gsl_interp const*)$obj, $xa, $ya, (double)$x, (gsl_interp_accel*)$a, (double*)$d2);
			]"
		end

	c_gsl_interp_eval_deriv2 (obj: POINTER; xa: POINTER; ya: POINTER; x: REAL_64; a: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_eval_deriv2 ((gsl_interp const*)$obj, $xa, $ya, (double)$x, (gsl_interp_accel*)$a);
			]"
		end

	c_gsl_interp_eval_integ_e (obj: POINTER; xa: POINTER; ya: POINTER; a: REAL_64; b: REAL_64; acc: POINTER; a_result: POINTER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_eval_integ_e ((gsl_interp const*)$obj, $xa, $ya, (double)$a, (double)$b, (gsl_interp_accel*)$acc, (double*)$a_result);
			]"
		end

	c_gsl_interp_eval_integ (obj: POINTER; xa: POINTER; ya: POINTER; a: REAL_64; b: REAL_64; acc: POINTER): REAL_64
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_eval_integ ((gsl_interp const*)$obj, $xa, $ya, (double)$a, (double)$b, (gsl_interp_accel*)$acc);
			]"
		end

	c_gsl_interp_free (interp: POINTER)
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				gsl_interp_free ((gsl_interp*)$interp);
			]"
		end

	c_gsl_interp_bsearch (x_array: POINTER; x: REAL_64; index_lo: INTEGER; index_hi: INTEGER): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_bsearch ($x_array, (double)$x, (size_t)$index_lo, (size_t)$index_hi);
			]"
		end

	c_gsl_interp_accel_find (a: POINTER; x_array: POINTER; size: INTEGER; x: REAL_64): INTEGER
		external
			"C inline use <eif_gsl.h>"
		alias
			"[
				return gsl_interp_accel_find ((gsl_interp_accel*)$a, $x_array, (size_t)$size, (double)$x);
			]"
		end

feature -- Externals Address

end
