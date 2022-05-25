-- auto format
-- could specific filetype such as *.c *.cpp *.go, * is all
-- <buffer> is the file you are dealing
vim.cmd [[

  augroup _auto_format
    autocmd!
    autocmd BufWritePre * :Format
  augroup end
  
]]
