lua << EOF
local snap = require'snap'
snap.maps {
  {"<C-p>", snap.config.file {producer = "ripgrep.file"}},
  {"<Leader>b", snap.config.file {producer = "vim.buffer"}},
  {"<Leader>o", snap.config.file {producer = "vim.oldfile"}},
  {"<Leader>f", snap.config.vimgrep {}},
}
EOF
