vim.api.nvim_buf_set_keymap(
  0,
  "n",
  "<F10>",
  ":w<cr> :call system('/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD ' . expand('%:p') . ' 2> /dev/null &')<cr>",
  {
    noremap = true,
    silent = true,
  }
)
