if has('nvim')
  command! MyPluginHello call luaeval('require("my_plugin").hello()')
endif

