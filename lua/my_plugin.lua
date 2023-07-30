local my_plugin = {}
-- my_pluginテーブル（配列）に、helloという関数を詰める
function my_plugin.hello()
    vim.api.nvim_command('tabnew')

    local register_content = vim.fn.getreg('')
    vim.api.nvim_put({register_content}, 'l', true, true)

    vim.api.nvim_command('vsplit | enew')

    local register_content = vim.fn.getreg('1')
    vim.api.nvim_put({register_content}, 'l', true, true)

end

return my_plugin

