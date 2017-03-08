new_http_archive(
    name = 'flatbuffers',

    # Found an invalid symlink in this version of flatbuffers, thought that
    # was the problem but it turns out that the problem still persists even
    # after the invalid symlink has been fixed
    #url = 'https://github.com/google/flatbuffers/archive/v1.6.0.zip',
    #sha256 = '4b06b8823e7e895454b0c8ce2424f6df331aaa67c425d8a95ca5f04cf96361fb',
    #strip_prefix = 'flatbuffers-1.6.0',

    # This version of flatbuffers has the invalid symlink fixed but bazel
    # still has issues with the symlink and complains of it pointing to a file
    # that is outside of the zip archive
    url = 'https://github.com/hazelnusse/flatbuffers/archive/fix_broken_symlink.zip',
    sha256 = '4b7149d7af25310af70a0a26bbc88d8fc4dc01eb2b101624cf0b2c4379891b9f',
    strip_prefix = 'flatbuffers-fix_broken_symlink',

    build_file = 'BUILD.flatbuffers',
)
