package = 'ljlinenoise'
version = '0.1.1-1'
source = {
    url = 'http://sites.google.com/site/fperrad/ljlinenoise-0.1.1.tar.gz',
    md5 = '2bd7df23065b563804deb9c5a24c5280',
    dir = 'ljlinenoise-0.1.1',
}
description = {
    summary = "Line editing in pure LuaJIT",
    detailed = [[
        ljlinenoise is a pure LuaJIT port of linenoise (https://github.com/antirez/linenoise),
        a small alternative to readline and libedit.
        ljlinenoise is based on ljsyscall (https://github.com/justincormack/ljsyscall).
        ljlinenoise is compatible with lua-linenoise (https://github.com/hoelzro/lua-linenoise).
    ]],
    homepage = 'http://fperrad.github.io/ljlinenoise/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua == 5.1',               -- In fact this should be "luajit >= 2.0.0"
    'ljsyscall >= 0.9',
}
build = {
    type = 'builtin',
    modules = {
        ['linenoise'] = 'src/linenoise.lua',
    },
    install = {
        bin = {
            'src/lrepl',
            'src/ljrepl',
        }
    },
    copy_directories = { 'doc', 'test' },
}
