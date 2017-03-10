def _impl(ctx):
    args = ["--cpp"] + [f.path for f in ctx.files.srcs]
    ctx.action(
        inputs=ctx.files.srcs,
        outputs=[ctx.outputs.out],
        arguments=args,
        executable=ctx.executable._flatc
    )

cc_flatbuffers_compile = rule(
    implementation = _impl,
    attrs = {
        "srcs": attr.label(allow_files = True),
        "out": attr.output(mandatory = True),
        "_flatc": attr.label(executable = True,
                            cfg = "host",
                            allow_files = True,
                            default = Label("@flatbuffers//:flatc")),
     }
)

#def cc_flatbuffers_compile(name,
#                           flatbuffer_file,
#                           flatc="@flatbuffers//:flatc"):
#    """Bazel rule to create a C++ flatbuffers header only library from a
#       single flatbuffers source file"""
#
#    generated_output = flatbuffer_file[:-len(".fbs")] + "_generated.h"
#
#    _flatbuffers_gen(
#        name = name,
#        input = flatbuffer_file,
#        output = generated_output,
#        flatc = flatc
#    )
