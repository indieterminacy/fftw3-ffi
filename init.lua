-- Do not change this file manually
-- Generated with dev/create-init.lua

local ffi = require 'ffi'
local C = ffi.load('fftw3')
local ok, Cf = pcall(function () return ffi.load('fftw3f') end)
if not ok then
     print('Warning: float version of libfftw3: libfftw3f.(so/dylib) not found')
end
local fftw = {C=C}
local fftwf = {Cf = Cf}
fftw.float = fftwf

require 'fftw3.cdefs'

local defines = require 'fftw3.defines'
defines.register_hashdefs(fftw, C)
defines.register_hashdefsf(fftwf, Cf)

local function register(luafuncname, funcname)
   local symexists, msg = pcall(function()
                              local sym = C[funcname]
                           end)
   if symexists then
      fftw[luafuncname] = C[funcname]
   end
end

local function registerf(luafuncname, funcname)
   local symexists, msg = pcall(function()
                              local sym = Cf[funcname]
                           end)
   if symexists then
      fftwf[luafuncname] = Cf[funcname]
   end
end

register('execute', 'fftw_execute')
register('plan_dft', 'fftw_plan_dft')
register('plan_dft_1d', 'fftw_plan_dft_1d')
register('plan_dft_2d', 'fftw_plan_dft_2d')
register('plan_dft_3d', 'fftw_plan_dft_3d')
register('plan_many_dft', 'fftw_plan_many_dft')
register('plan_guru_dft', 'fftw_plan_guru_dft')
register('plan_guru_split_dft', 'fftw_plan_guru_split_dft')
register('plan_guru64_dft', 'fftw_plan_guru64_dft')
register('plan_guru64_split_dft', 'fftw_plan_guru64_split_dft')
register('execute_dft', 'fftw_execute_dft')
register('execute_split_dft', 'fftw_execute_split_dft')
register('plan_many_dft_r2c', 'fftw_plan_many_dft_r2c')
register('plan_dft_r2c', 'fftw_plan_dft_r2c')
register('plan_dft_r2c_1d', 'fftw_plan_dft_r2c_1d')
register('plan_dft_r2c_2d', 'fftw_plan_dft_r2c_2d')
register('plan_dft_r2c_3d', 'fftw_plan_dft_r2c_3d')
register('plan_many_dft_c2r', 'fftw_plan_many_dft_c2r')
register('plan_dft_c2r', 'fftw_plan_dft_c2r')
register('plan_dft_c2r_1d', 'fftw_plan_dft_c2r_1d')
register('plan_dft_c2r_2d', 'fftw_plan_dft_c2r_2d')
register('plan_dft_c2r_3d', 'fftw_plan_dft_c2r_3d')
register('plan_guru_dft_r2c', 'fftw_plan_guru_dft_r2c')
register('plan_guru_dft_c2r', 'fftw_plan_guru_dft_c2r')
register('plan_guru_split_dft_r2c', 'fftw_plan_guru_split_dft_r2c')
register('plan_guru_split_dft_c2r', 'fftw_plan_guru_split_dft_c2r')
register('plan_guru64_dft_r2c', 'fftw_plan_guru64_dft_r2c')
register('plan_guru64_dft_c2r', 'fftw_plan_guru64_dft_c2r')
register('plan_guru64_split_dft_r2c', 'fftw_plan_guru64_split_dft_r2c')
register('plan_guru64_split_dft_c2r', 'fftw_plan_guru64_split_dft_c2r')
register('execute_dft_r2c', 'fftw_execute_dft_r2c')
register('execute_dft_c2r', 'fftw_execute_dft_c2r')
register('execute_split_dft_r2c', 'fftw_execute_split_dft_r2c')
register('execute_split_dft_c2r', 'fftw_execute_split_dft_c2r')
register('plan_many_r2r', 'fftw_plan_many_r2r')
register('plan_r2r', 'fftw_plan_r2r')
register('plan_r2r_1d', 'fftw_plan_r2r_1d')
register('plan_r2r_2d', 'fftw_plan_r2r_2d')
register('plan_r2r_3d', 'fftw_plan_r2r_3d')
register('plan_guru_r2r', 'fftw_plan_guru_r2r')
register('plan_guru64_r2r', 'fftw_plan_guru64_r2r')
register('execute_r2r', 'fftw_execute_r2r')
register('destroy_plan', 'fftw_destroy_plan')
register('forget_wisdom', 'fftw_forget_wisdom')
register('cleanup', 'fftw_cleanup')
register('set_timelimit', 'fftw_set_timelimit')
register('plan_with_nthreads', 'fftw_plan_with_nthreads')
register('init_threads', 'fftw_init_threads')
register('cleanup_threads', 'fftw_cleanup_threads')
register('export_wisdom_to_filename', 'fftw_export_wisdom_to_filename')
register('export_wisdom_to_file', 'fftw_export_wisdom_to_file')
register('export_wisdom_to_string', 'fftw_export_wisdom_to_string')
register('export_wisdom', 'fftw_export_wisdom')
register('import_system_wisdom', 'fftw_import_system_wisdom')
register('import_wisdom_from_filename', 'fftw_import_wisdom_from_filename')
register('import_wisdom_from_file', 'fftw_import_wisdom_from_file')
register('import_wisdom_from_string', 'fftw_import_wisdom_from_string')
register('import_wisdom', 'fftw_import_wisdom')
register('fprint_plan', 'fftw_fprint_plan')
register('print_plan', 'fftw_print_plan')
register('malloc', 'fftw_malloc')
register('alloc_real', 'fftw_alloc_real')
register('alloc_complex', 'fftw_alloc_complex')
register('free', 'fftw_free')
register('flops', 'fftw_flops')
register('estimate_cost', 'fftw_estimate_cost')
register('cost', 'fftw_cost')

register('r2r_kind_do_not_use_me', 'fftw_r2r_kind_do_not_use_me')
register('iodim_do_not_use_me', 'fftw_iodim_do_not_use_me')
register('iodim64_do_not_use_me', 'fftw_iodim64_do_not_use_me')
register('write_char_func_do_not_use_me', 'fftw_write_char_func_do_not_use_me')
register('read_char_func_do_not_use_me', 'fftw_read_char_func_do_not_use_me')
register('complex', 'fftw_complex')
register('plan_s', 'fftw_plan_s')
register('plan', 'fftw_plan')
register('iodim_do_not_use_me', 'fftw_iodim_do_not_use_me')
register('iodim', 'fftw_iodim')
register('iodim64_do_not_use_me', 'fftw_iodim64_do_not_use_me')
register('iodim64', 'fftw_iodim64')
register('r2r_kind_do_not_use_me', 'fftw_r2r_kind_do_not_use_me')
register('r2r_kind', 'fftw_r2r_kind')
register('write_char_func_do_not_use_me', 'fftw_write_char_func_do_not_use_me')
register('write_char_func', 'fftw_write_char_func')
register('read_char_func_do_not_use_me', 'fftw_read_char_func_do_not_use_me')
register('read_char_func', 'fftw_read_char_func')
register('plan', 'fftw_plan')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('iodim', 'fftw_iodim')
register('iodim', 'fftw_iodim')
register('complex', 'fftw_complex')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('iodim', 'fftw_iodim')
register('iodim', 'fftw_iodim')
register('plan', 'fftw_plan')
register('iodim64', 'fftw_iodim64')
register('iodim64', 'fftw_iodim64')
register('complex', 'fftw_complex')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('iodim64', 'fftw_iodim64')
register('iodim64', 'fftw_iodim64')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('iodim', 'fftw_iodim')
register('iodim', 'fftw_iodim')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('iodim', 'fftw_iodim')
register('iodim', 'fftw_iodim')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('iodim', 'fftw_iodim')
register('iodim', 'fftw_iodim')
register('plan', 'fftw_plan')
register('iodim', 'fftw_iodim')
register('iodim', 'fftw_iodim')
register('plan', 'fftw_plan')
register('iodim64', 'fftw_iodim64')
register('iodim64', 'fftw_iodim64')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('iodim64', 'fftw_iodim64')
register('iodim64', 'fftw_iodim64')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('iodim64', 'fftw_iodim64')
register('iodim64', 'fftw_iodim64')
register('plan', 'fftw_plan')
register('iodim64', 'fftw_iodim64')
register('iodim64', 'fftw_iodim64')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('plan', 'fftw_plan')
register('plan', 'fftw_plan')
register('r2r_kind', 'fftw_r2r_kind')
register('plan', 'fftw_plan')
register('r2r_kind', 'fftw_r2r_kind')
register('plan', 'fftw_plan')
register('r2r_kind', 'fftw_r2r_kind')
register('plan', 'fftw_plan')
register('r2r_kind', 'fftw_r2r_kind')
register('r2r_kind', 'fftw_r2r_kind')
register('plan', 'fftw_plan')
register('r2r_kind', 'fftw_r2r_kind')
register('r2r_kind', 'fftw_r2r_kind')
register('r2r_kind', 'fftw_r2r_kind')
register('plan', 'fftw_plan')
register('iodim', 'fftw_iodim')
register('iodim', 'fftw_iodim')
register('r2r_kind', 'fftw_r2r_kind')
register('plan', 'fftw_plan')
register('iodim64', 'fftw_iodim64')
register('iodim64', 'fftw_iodim64')
register('r2r_kind', 'fftw_r2r_kind')
register('plan', 'fftw_plan')
register('plan', 'fftw_plan')
register('write_char_func', 'fftw_write_char_func')
register('read_char_func', 'fftw_read_char_func')
register('plan', 'fftw_plan')
register('plan', 'fftw_plan')
register('complex', 'fftw_complex')
register('plan', 'fftw_plan')
register('plan', 'fftw_plan')
register('plan', 'fftw_plan')
register('version', 'fftw_version')
register('cc', 'fftw_cc')
register('codelet_optim', 'fftw_codelet_optim')
register('iodim_do_not_use_me', 'fftw_iodim_do_not_use_me')
register('iodim64_do_not_use_me', 'fftw_iodim64_do_not_use_me')
register('r2r_kind_do_not_use_me', 'fftw_r2r_kind_do_not_use_me')
register('write_char_func_do_not_use_me', 'fftw_write_char_func_do_not_use_me')
register('read_char_func_do_not_use_me', 'fftw_read_char_func_do_not_use_me')
register('iodim_do_not_use_me', 'fftw_iodim_do_not_use_me')
register('iodim64_do_not_use_me', 'fftw_iodim64_do_not_use_me')
register('r2r_kind_do_not_use_me', 'fftw_r2r_kind_do_not_use_me')
register('write_char_func_do_not_use_me', 'fftw_write_char_func_do_not_use_me')
register('read_char_func_do_not_use_me', 'fftw_read_char_func_do_not_use_me')
register('iodim_do_not_use_me', 'fftw_iodim_do_not_use_me')
register('iodim64_do_not_use_me', 'fftw_iodim64_do_not_use_me')
register('r2r_kind_do_not_use_me', 'fftw_r2r_kind_do_not_use_me')
register('write_char_func_do_not_use_me', 'fftw_write_char_func_do_not_use_me')
register('read_char_func_do_not_use_me', 'fftw_read_char_func_do_not_use_me')



registerf('execute', 'fftwf_execute')
registerf('plan_dft', 'fftwf_plan_dft')
registerf('plan_dft_1d', 'fftwf_plan_dft_1d')
registerf('plan_dft_2d', 'fftwf_plan_dft_2d')
registerf('plan_dft_3d', 'fftwf_plan_dft_3d')
registerf('plan_many_dft', 'fftwf_plan_many_dft')
registerf('plan_guru_dft', 'fftwf_plan_guru_dft')
registerf('plan_guru_split_dft', 'fftwf_plan_guru_split_dft')
registerf('plan_guru64_dft', 'fftwf_plan_guru64_dft')
registerf('plan_guru64_split_dft', 'fftwf_plan_guru64_split_dft')
registerf('execute_dft', 'fftwf_execute_dft')
registerf('execute_split_dft', 'fftwf_execute_split_dft')
registerf('plan_many_dft_r2c', 'fftwf_plan_many_dft_r2c')
registerf('plan_dft_r2c', 'fftwf_plan_dft_r2c')
registerf('plan_dft_r2c_1d', 'fftwf_plan_dft_r2c_1d')
registerf('plan_dft_r2c_2d', 'fftwf_plan_dft_r2c_2d')
registerf('plan_dft_r2c_3d', 'fftwf_plan_dft_r2c_3d')
registerf('plan_many_dft_c2r', 'fftwf_plan_many_dft_c2r')
registerf('plan_dft_c2r', 'fftwf_plan_dft_c2r')
registerf('plan_dft_c2r_1d', 'fftwf_plan_dft_c2r_1d')
registerf('plan_dft_c2r_2d', 'fftwf_plan_dft_c2r_2d')
registerf('plan_dft_c2r_3d', 'fftwf_plan_dft_c2r_3d')
registerf('plan_guru_dft_r2c', 'fftwf_plan_guru_dft_r2c')
registerf('plan_guru_dft_c2r', 'fftwf_plan_guru_dft_c2r')
registerf('plan_guru_split_dft_r2c', 'fftwf_plan_guru_split_dft_r2c')
registerf('plan_guru_split_dft_c2r', 'fftwf_plan_guru_split_dft_c2r')
registerf('plan_guru64_dft_r2c', 'fftwf_plan_guru64_dft_r2c')
registerf('plan_guru64_dft_c2r', 'fftwf_plan_guru64_dft_c2r')
registerf('plan_guru64_split_dft_r2c', 'fftwf_plan_guru64_split_dft_r2c')
registerf('plan_guru64_split_dft_c2r', 'fftwf_plan_guru64_split_dft_c2r')
registerf('execute_dft_r2c', 'fftwf_execute_dft_r2c')
registerf('execute_dft_c2r', 'fftwf_execute_dft_c2r')
registerf('execute_split_dft_r2c', 'fftwf_execute_split_dft_r2c')
registerf('execute_split_dft_c2r', 'fftwf_execute_split_dft_c2r')
registerf('plan_many_r2r', 'fftwf_plan_many_r2r')
registerf('plan_r2r', 'fftwf_plan_r2r')
registerf('plan_r2r_1d', 'fftwf_plan_r2r_1d')
registerf('plan_r2r_2d', 'fftwf_plan_r2r_2d')
registerf('plan_r2r_3d', 'fftwf_plan_r2r_3d')
registerf('plan_guru_r2r', 'fftwf_plan_guru_r2r')
registerf('plan_guru64_r2r', 'fftwf_plan_guru64_r2r')
registerf('execute_r2r', 'fftwf_execute_r2r')
registerf('destroy_plan', 'fftwf_destroy_plan')
registerf('forget_wisdom', 'fftwf_forget_wisdom')
registerf('cleanup', 'fftwf_cleanup')
registerf('set_timelimit', 'fftwf_set_timelimit')
registerf('plan_with_nthreads', 'fftwf_plan_with_nthreads')
registerf('init_threads', 'fftwf_init_threads')
registerf('cleanup_threads', 'fftwf_cleanup_threads')
registerf('export_wisdom_to_filename', 'fftwf_export_wisdom_to_filename')
registerf('export_wisdom_to_file', 'fftwf_export_wisdom_to_file')
registerf('export_wisdom_to_string', 'fftwf_export_wisdom_to_string')
registerf('export_wisdom', 'fftwf_export_wisdom')
registerf('import_system_wisdom', 'fftwf_import_system_wisdom')
registerf('import_wisdom_from_filename', 'fftwf_import_wisdom_from_filename')
registerf('import_wisdom_from_file', 'fftwf_import_wisdom_from_file')
registerf('import_wisdom_from_string', 'fftwf_import_wisdom_from_string')
registerf('import_wisdom', 'fftwf_import_wisdom')
registerf('fprint_plan', 'fftwf_fprint_plan')
registerf('print_plan', 'fftwf_print_plan')
registerf('malloc', 'fftwf_malloc')
registerf('alloc_real', 'fftwf_alloc_real')
registerf('alloc_complex', 'fftwf_alloc_complex')
registerf('free', 'fftwf_free')
registerf('flops', 'fftwf_flops')
registerf('estimate_cost', 'fftwf_estimate_cost')
registerf('cost', 'fftwf_cost')

registerf('complex', 'fftwf_complex')
registerf('plan_s', 'fftwf_plan_s')
registerf('plan', 'fftwf_plan')
registerf('iodim', 'fftwf_iodim')
registerf('iodim64', 'fftwf_iodim64')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('write_char_func', 'fftwf_write_char_func')
registerf('read_char_func', 'fftwf_read_char_func')
registerf('plan', 'fftwf_plan')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('iodim', 'fftwf_iodim')
registerf('iodim', 'fftwf_iodim')
registerf('complex', 'fftwf_complex')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('iodim', 'fftwf_iodim')
registerf('iodim', 'fftwf_iodim')
registerf('plan', 'fftwf_plan')
registerf('iodim64', 'fftwf_iodim64')
registerf('iodim64', 'fftwf_iodim64')
registerf('complex', 'fftwf_complex')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('iodim64', 'fftwf_iodim64')
registerf('iodim64', 'fftwf_iodim64')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('iodim', 'fftwf_iodim')
registerf('iodim', 'fftwf_iodim')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('iodim', 'fftwf_iodim')
registerf('iodim', 'fftwf_iodim')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('iodim', 'fftwf_iodim')
registerf('iodim', 'fftwf_iodim')
registerf('plan', 'fftwf_plan')
registerf('iodim', 'fftwf_iodim')
registerf('iodim', 'fftwf_iodim')
registerf('plan', 'fftwf_plan')
registerf('iodim64', 'fftwf_iodim64')
registerf('iodim64', 'fftwf_iodim64')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('iodim64', 'fftwf_iodim64')
registerf('iodim64', 'fftwf_iodim64')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('iodim64', 'fftwf_iodim64')
registerf('iodim64', 'fftwf_iodim64')
registerf('plan', 'fftwf_plan')
registerf('iodim64', 'fftwf_iodim64')
registerf('iodim64', 'fftwf_iodim64')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('plan', 'fftwf_plan')
registerf('plan', 'fftwf_plan')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('plan', 'fftwf_plan')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('plan', 'fftwf_plan')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('plan', 'fftwf_plan')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('plan', 'fftwf_plan')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('plan', 'fftwf_plan')
registerf('iodim', 'fftwf_iodim')
registerf('iodim', 'fftwf_iodim')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('plan', 'fftwf_plan')
registerf('iodim64', 'fftwf_iodim64')
registerf('iodim64', 'fftwf_iodim64')
registerf('r2r_kind', 'fftwf_r2r_kind')
registerf('plan', 'fftwf_plan')
registerf('plan', 'fftwf_plan')
registerf('write_char_func', 'fftwf_write_char_func')
registerf('read_char_func', 'fftwf_read_char_func')
registerf('plan', 'fftwf_plan')
registerf('plan', 'fftwf_plan')
registerf('complex', 'fftwf_complex')
registerf('plan', 'fftwf_plan')
registerf('plan', 'fftwf_plan')
registerf('plan', 'fftwf_plan')
registerf('version', 'fftwf_version')
registerf('cc', 'fftwf_cc')
registerf('codelet_optim', 'fftwf_codelet_optim')

return fftw

