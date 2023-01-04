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
badd +15 src/main/java/com/example/myapp/repository/SiteUserRepository.java
badd +31 src/main/java/com/example/myapp/config/SecurityConfig.java
badd +18 src/main/java/com/example/myapp/config/DataLoader.java
badd +68 src/main/java/com/example/myapp/controller/SecurityController.java
badd +94 pom.xml
badd +46 src/main/resources/templates/layout/layout.html
badd +51 src/main/resources/templates/login.html
badd +1 src/main/resources/templates/fragments/message.html
badd +213 ~/workspace/springbootstudy/memo.md
badd +1 src/main/resources/templates/fragments/sidebar.html
badd +59 src/main/resources/static/css/app.css
badd +223 ~/.config/nvim/lua/plugins/init.lua
badd +1 ~/workspace/oracle_java_silver_memo
badd +4 src/main/resources/application.properties
badd +48 src/main/resources/templates/user.html
badd +16 src/main/resources/templates/error.html
badd +24 ~/.config/nvim/lua/custom/init.lua
badd +71 ~/workspace/index.html
badd +48 target/classes/templates/user.html
badd +41 ~/.config/nvim/lua/custom/mappings/init.lua
badd +73 src/main/resources/templates/register.html
badd +1 ~/workspace/memo.txt
badd +21 src/main/java/com/example/myapp/util/Type.java
badd +36 src/main/resources/templates/list.html
badd +9 src/main/resources/static/js/usertables.js
badd +130 ~/.config/nvim/lua/custom/plugins/init.lua
badd +27 ~/.config/nvim/lua/custom/plugins/configs/lspconfig.lua
badd +3 ~/.config/nvim/lua/custom/plugins/override.lua
badd +1 memo.txt
badd +19 src/main/java/com/example/myapp/validator/UniqueLoginValidator.java
badd +12 src/main/java/com/example/myapp/validator/UniqueLogin.java
badd +1 src/main/java/com/example/myapp/util/Authority.java
badd +1 src/main/java/com/example/myapp/config/UserDetailsServicelmpl.java
badd +1 src/main/java/com/example/myapp/DemoApplication.java
badd +49 src/test/java/com/example/myapp/DemoApplicationTests.java
badd +1 NERD_tree_1
badd +1 ~/workspace/myapp
argglobal
%argdel
set lines=38 columns=174
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/test/java/com/example/myapp/DemoApplicationTests.java
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
let s:l = 49 - ((32 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 49
normal! 023|
wincmd w
argglobal
if bufexists(fnamemodify("~/workspace/springbootstudy/memo.md", ":p")) | buffer ~/workspace/springbootstudy/memo.md | else | edit ~/workspace/springbootstudy/memo.md | endif
if &buftype ==# 'terminal'
  silent file ~/workspace/springbootstudy/memo.md
endif
balt src/test/java/com/example/myapp/DemoApplicationTests.java
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
let s:l = 214 - ((34 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 214
normal! 041|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
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
let s:l = 18 - ((14 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/workspace/springbootstudy/memo.md", ":p")) | buffer ~/workspace/springbootstudy/memo.md | else | edit ~/workspace/springbootstudy/memo.md | endif
if &buftype ==# 'terminal'
  silent file ~/workspace/springbootstudy/memo.md
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
let s:l = 209 - ((26 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 209
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
let s:l = 35 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 35
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/.config/nvim/lua/custom/mappings/init.lua", ":p")) | buffer ~/.config/nvim/lua/custom/mappings/init.lua | else | edit ~/.config/nvim/lua/custom/mappings/init.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.config/nvim/lua/custom/mappings/init.lua
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
let s:l = 41 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 41
normal! 021|
wincmd w
exe 'vert 1resize ' . ((&columns * 87 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 86 + 87) / 174)
tabnext 1
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
