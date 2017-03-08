def _impl(ctx):
    ctx.action(
        inputs = ctx.attr.srcs,
        outputs = [ctx.outputs.out],
        arguments = ["--cpp"] + [s.path for s in ctx.attr.srcs],
        executable=ctx.executable._flatc,
    )

cc_flatbuffers = rule(
    implementation = _impl,
    attrs = {
        "srcs": attr.label_list(allow_files=True),
        "out": attr.output(mandatory=True),
        "_flatc": attr.label(executable=True,
                             cfg="host",
                             allow_files=True,
                             default=Label("@flatbuffers//:flatc"))
    }
)

