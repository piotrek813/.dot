local npairs = require("nvim-autopairs")

npairs.setup ({
  disable_filetype = { 'md' },
  check_ts = true,
  javascript = {'template-string'}
})
