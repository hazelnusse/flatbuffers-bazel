fbs_lib_srcs = [
    'include/flatbuffers/code_generators.h',
    'include/flatbuffers/flatbuffers.h',
    'include/flatbuffers/hash.h',
    'include/flatbuffers/idl.h',
    'include/flatbuffers/util.h',
    'include/flatbuffers/reflection.h',
    'include/flatbuffers/reflection_generated.h',
    'include/flatbuffers/flexbuffers.h',
    'src/code_generators.cpp',
    'src/idl_parser.cpp',
    'src/idl_gen_text.cpp',
    'src/reflection.cpp',
    'src/util.cpp']

fbs_compiler_srcs = fbs_lib_srcs + [
    'src/idl_gen_cpp.cpp',
    'src/idl_gen_general.cpp',
    'src/idl_gen_go.cpp',
    'src/idl_gen_js.cpp',
    'src/idl_gen_php.cpp',
    'src/idl_gen_python.cpp',
    'src/idl_gen_fbs.cpp',
    'src/idl_gen_grpc.cpp',
    'include/flatbuffers/flatc.h',      # Had to add this, wasn't in CMakeLists.txt
    'src/flatc.cpp',
    'src/flatc_main.cpp',
    'grpc/src/compiler/schema_interface.h',
    'grpc/src/compiler/cpp_generator.h',
    'grpc/src/compiler/cpp_generator.cc',
    'grpc/src/compiler/go_generator.h',
    'grpc/src/compiler/go_generator.cc']

cc_binary(
    name       = 'flatc',
    srcs       = fbs_compiler_srcs,
    copts      = ['-Iinclude', '-Igrpc'],
    visibility = ['//visibility:public'],
)
