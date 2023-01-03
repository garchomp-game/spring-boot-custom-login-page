let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/workspace/myapp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +25 src/main/java/com/example/myapp/model/SiteUser.java
badd +1 src/main/java/com/example/myapp/repository/SiteUserRepository.java
badd +47 src/main/java/com/example/myapp/config/SecurityConfig.java
badd +9 src/main/java/com/example/myapp/config/DataLoader.java
badd +52 src/main/java/com/example/myapp/controller/SecurityController.java
badd +38 pom.xml
badd +46 src/main/resources/templates/layout/layout.html
badd +51 src/main/resources/templates/login.html
badd +1 src/main/resources/templates/fragments/message.html
badd +181 ~/workspace/springbootstudy/memo.md
badd +1 src/main/resources/templates/fragments/sidebar.html
badd +59 src/main/resources/static/css/app.css
badd +223 ~/.config/nvim/lua/plugins/init.lua
badd +1 ~/workspace/oracle_java_silver_memo
badd +1 src/main/resources/application.properties
badd +48 src/main/resources/templates/user.html
badd +16 src/main/resources/templates/error.html
badd +24 ~/.config/nvim/lua/custom/init.lua
badd +71 ~/workspace/index.html
badd +48 target/classes/templates/user.html
badd +1 ~/.config/nvim/lua/custom/mappings/init.lua
badd +90 src/main/resources/templates/register.html
badd +1 ~/workspace/memo.txt
badd +21 src/main/java/com/example/myapp/util/Type.java
badd +36 src/main/resources/templates/list.html
badd +9 src/main/resources/static/js/usertables.js
badd +130 ~/.config/nvim/lua/custom/plugins/init.lua
badd +10 ~/.config/nvim/lua/custom/plugins/configs/lspconfig.lua
badd +3 ~/.config/nvim/lua/custom/plugins/override.lua
badd +1 memo.txt
badd +1 ~/workspace/myapp
badd +10 src/main/java/com/example/myapp/validator/UniqueLoginValidator.java
badd +18 src/main/java/com/example/myapp/validator/UniqueLogin.java
argglobal
%argdel
set lines=38 columns=174
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/main/java/com/example/myapp/validator/UniqueLoginValidator.java
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 17 + 19) / 38)
exe '2resize ' . ((&lines * 17 + 19) / 38)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 24 - ((16 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("src/main/java/com/example/myapp/validator/UniqueLogin.java", ":p")) | buffer src/main/java/com/example/myapp/validator/UniqueLogin.java | else | edit src/main/java/com/example/myapp/validator/UniqueLogin.java | endif
if &buftype ==# 'terminal'
  silent file src/main/java/com/example/myapp/validator/UniqueLogin.java
endif
balt src/main/java/com/example/myapp/validator/UniqueLoginValidator.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 12 - ((9 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 012|
wincmd w
exe '1resize ' . ((&lines * 17 + 19) / 38)
exe '2resize ' . ((&lines * 17 + 19) / 38)
tabnext
edit src/main/java/com/example/myapp/model/SiteUser.java
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 25 - ((21 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
normal! 014|
wincmd w
argglobal
if bufexists(fnamemodify("term://~/workspace/myapp//25758:/data/data/com.termux/files/usr/bin/zsh", ":p")) | buffer term://~/workspace/myapp//25758:/data/data/com.termux/files/usr/bin/zsh | else | edit term://~/workspace/myapp//25758:/data/data/com.termux/files/usr/bin/zsh | endif
if &buftype ==# 'terminal'
  silent file term://~/workspace/myapp//25758:/data/data/com.termux/files/usr/bin/zsh
endif
balt src/main/java/com/example/myapp/model/SiteUser.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3389 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3389
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
tabnext
edit src/main/resources/templates/register.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
argglobal
balt src/main/resources/templates/login.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 90 - ((22 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 90
normal! 019|
wincmd w
argglobal
if bufexists(fnamemodify("src/main/java/com/example/myapp/controller/SecurityController.java", ":p")) | buffer src/main/java/com/example/myapp/controller/SecurityController.java | else | edit src/main/java/com/example/myapp/controller/SecurityController.java | endif
if &buftype ==# 'terminal'
  silent file src/main/java/com/example/myapp/controller/SecurityController.java
endif
balt target/classes/templates/user.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 68 - ((34 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 68
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
tabnext
edit ~/.config/nvim/lua/custom/plugins/init.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 87 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 86 + 87) / 174)
argglobal
balt ~/.config/nvim/lua/custom/plugins/override.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 30 - ((17 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 30
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/.config/nvim/lua/custom/plugins/configs/lspconfig.lua", ":p")) | buffer ~/.config/nvim/lua/custom/plugins/configs/lspconfig.lua | else | edit ~/.config/nvim/lua/custom/plugins/configs/lspconfig.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.config/nvim/lua/custom/plugins/configs/lspconfig.lua
endif
balt ~/.config/nvim/lua/custom/plugins/init.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 27 - ((22 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 87 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 86 + 87) / 174)
tabnext 2
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
