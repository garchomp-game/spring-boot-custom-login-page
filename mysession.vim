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
badd +1 src/main/java/com/example/myapp/model/SiteUser.java
badd +1 src/main/java/com/example/myapp/repository/SiteUserRepository.java
badd +35 src/main/java/com/example/myapp/config/SecurityConfig.java
badd +9 src/main/java/com/example/myapp/config/DataLoader.java
badd +9 src/main/java/com/example/myapp/controller/SecurityController.java
badd +38 pom.xml
badd +18 src/main/resources/templates/layout/layout.html
badd +62 src/main/resources/templates/login.html
badd +1 src/main/resources/templates/fragments/message.html
badd +167 ~/workspace/springbootstudy/memo.md
badd +69 src/main/resources/templates/fragments/sidebar.html
badd +59 src/main/resources/static/css/app.css
badd +223 ~/.config/nvim/lua/plugins/init.lua
badd +1 ~/.config/nvim/lua
badd +1 ~/workspace/oracle_java_silver_memo
badd +1 src/main/resources/application.properties
badd +1 src/main/resources/templates/user.html
badd +16 src/main/resources/templates/error.html
badd +24 ~/.config/nvim/lua/custom/init.lua
badd +71 ~/workspace/index.html
badd +14 target/classes/templates/user.html
badd +1 ~/workspace/myapp
badd +1 NERD_tree_2
badd +1 ~/.config/nvim/lua/custom/mappings/init.lua
argglobal
%argdel
set lines=38 columns=174
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/main/java/com/example/myapp/model/SiteUser.java
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
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
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe '2resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 87 + 87) / 174)
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
let s:l = 9 - ((6 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 9
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("src/main/java/com/example/myapp/repository/SiteUserRepository.java", ":p")) | buffer src/main/java/com/example/myapp/repository/SiteUserRepository.java | else | edit src/main/java/com/example/myapp/repository/SiteUserRepository.java | endif
if &buftype ==# 'terminal'
  silent file src/main/java/com/example/myapp/repository/SiteUserRepository.java
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
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("src/main/java/com/example/myapp/config/SecurityConfig.java", ":p")) | buffer src/main/java/com/example/myapp/config/SecurityConfig.java | else | edit src/main/java/com/example/myapp/config/SecurityConfig.java | endif
if &buftype ==# 'terminal'
  silent file src/main/java/com/example/myapp/config/SecurityConfig.java
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
silent! normal! zE
let &fdl = &fdl
let s:l = 34 - ((14 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 34
normal! 018|
wincmd w
exe '1resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe '2resize ' . ((&lines * 17 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 87 + 87) / 174)
tabnext
edit src/main/resources/templates/user.html
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
let s:l = 15 - ((14 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 060|
wincmd w
argglobal
if bufexists(fnamemodify("target/classes/templates/user.html", ":p")) | buffer target/classes/templates/user.html | else | edit target/classes/templates/user.html | endif
if &buftype ==# 'terminal'
  silent file target/classes/templates/user.html
endif
balt src/main/resources/templates/user.html
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
let s:l = 48 - ((34 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 48
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
tabnext
edit ~/.config/nvim/lua/custom/mappings/init.lua
argglobal
balt ~/.config/nvim/lua/plugins/init.lua
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
let s:l = 50 - ((29 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 50
normal! 06|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
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
