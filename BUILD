load("//:flatbuffers.bzl", "cc_flatbuffers")

cc_flatbuffers(
    name = "monster_fbs",
    srcs = ["monster.fbs"],
    out = "monster_generated.h",
)

cc_binary(
    name = "sample_binary",
    srcs = ["sample_binary.cpp"],
    deps = ["monster_fbs"],
)
