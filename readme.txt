VIM

http://www.vim.org/
https://github.com/vim/vim
http://vimhelp.appspot.com/
http://vim.wikia.com/
https://www.vi-improved.org/

https://en.wikipedia.org/wiki/Vi
https://en.wikipedia.org/wiki/Vim_%28text_editor%29

http://mislav.net/2011/12/vim-revisited/
http://hackaday.com/2016/08/08/editor-wars-the-revenge-of-vim/
http://vimgolf.com/

http://vimawesome.com/
https://github.com/junegunn/vim-plug
https://shapeshed.com/vim-netrw/

https://unix.stackexchange.com/questions/18743/whats-the-point-in-adding-a-new-line-to-the-end-of-a-file
https://stackoverflow.com/questions/729692/why-should-text-files-end-with-a-newline
https://stackoverflow.com/questions/15639511/vim-show-newline-at-the-end-of-file



IDE

https://sanctum.geek.nz/arabesque/series/unix-as-ide/
http://vim.wikia.com/wiki/Use_Vim_like_an_IDE
http://blog.joncairns.com/2012/05/using-vim-as-a-php-ide/
http://coderoncode.com/tools/2017/04/16/vim-the-perfect-ide.html



VIMRC

http://vim.wikia.com/wiki/Example_vimrc
https://dougblack.io/words/a-good-vimrc.html
https://github.com/vim/vim/blob/master/runtime/defaults.vim
https://github.com/tpope/vim-sensible
https://sanctum.geek.nz/arabesque/gracefully-degrading-vimrc/
https://stackoverflow.com/questions/164847/what-is-in-your-vimrc

https://stackoverflow.com/questions/13435586/should-i-use-single-or-double-quotes-in-my-vimrc-file
https://stackoverflow.com/questions/33380451/is-there-a-difference-between-syntax-on-and-syntax-enable-in-vimscript
https://stackoverflow.com/questions/15904758/how-can-i-make-vim-show-spaces
https://stackoverflow.com/questions/18178768/vimscript-call-vs-execute
https://stackoverflow.com/questions/22531336/how-to-avoid-vim-error-message-not-an-editor-command
https://stackoverflow.com/questions/4687009/opening-help-in-a-full-window
http://www.adp-gmbh.ch/vim/let_vs_set.html

http://vimhelp.appspot.com/map.txt.html
http://vimhelp.appspot.com/intro.txt.html#key-notation
http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
http://learnvimscriptthehardway.stevelosh.com/chapters/05.html
https://stackoverflow.com/questions/2483849/detect-if-a-key-is-bound-to-something-in-vim
https://vi.stackexchange.com/questions/4290/can-i-map-a-ctrl-upper-case-letter-separately-from-ctrl-lower-case-letter
http://vim.wikia.com/wiki/Use_Ctrl-O_instead_of_Esc_in_insert_mode_mappings
https://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc-file
https://stackoverflow.com/questions/446269/can-i-use-space-as-mapleader-in-vim
https://superuser.com/questions/693528/vim-is-there-a-downside-to-using-space-as-your-leader-key

http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
https://www.reddit.com/r/vim/comments/2fw33d/i_need_to_find_quicker_way_to_navigate_between/
http://vim.wikia.com/wiki/Cycle_through_buffers_including_hidden_buffers
https://github.com/vim-airline/vim-airline#smarter-tab-line



EXAMPLES

https://google.github.io/styleguide/vimscriptguide.xml
http://rbtnn.hateblo.jp/entry/2014/12/28/010913 Anti-pattern of vimrc

Prefix all variables with their scope.



http://vimhelp.appspot.com/eval.txt.html#internal-variables
http://vimhelp.appspot.com/eval.txt.html#:let
http://vimhelp.appspot.com/options.txt.html#:set

White space between {option} and '=' is allowed and
will be ignored.  White space between '=' and {value}
is not allowed.



http://www.bestofvim.com/tip/auto-reload-your-vimrc/
http://vim.wikia.com/wiki/Change_vimrc_with_auto_reload
http://vimhelp.appspot.com/autocmd.txt.html
http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
https://vi.stackexchange.com/questions/9455/why-should-i-use-augroup
https://www.reddit.com/r/vim/comments/4d7uym/when_to_clear_autocmds_in_other_words_when_to_use/

" vimrc

augroup vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END



https://stackoverflow.com/questions/1549263/how-can-i-create-a-folder-if-it-doesnt-exist-from-vimrc
http://learnvimscriptthehardway.stevelosh.com/chapters/52.html
http://vimhelp.appspot.com/various.txt.html#:silent
http://vimhelp.appspot.com/eval.txt.html#mkdir()

" mkdir

silent !mkdir -p ~/.vim/backup
silent !mkdir -p ~/.vim/swap
silent !mkdir -p ~/.vim/undo



http://vimhelp.appspot.com/editing.txt.html#backup
http://vimhelp.appspot.com/options.txt.html#%27backup%27
http://vimhelp.appspot.com/options.txt.html#%27backupdir%27
http://vimhelp.appspot.com/options.txt.html#%27writebackup%27

set nobackup
set nowritebackup

mkdir ~/.vim/backup
set backup
set backupdir=~/.vim/backup//



http://vim.wikia.com/wiki/Remove_swap_and_backup_files_from_your_working_directory
http://vimhelp.appspot.com/recover.txt.html
http://vimhelp.appspot.com/options.txt.html#%27swapfile%27
http://vimhelp.appspot.com/options.txt.html#%27directory%27

set noswapfile

mkdir ~/.vim/swap
set directory=~/.vim/swap//



https://www.electricmonk.nl/log/2012/07/26/persistent-undo-history-in-vim/
http://vimhelp.appspot.com/undo.txt.html#undo-persistence
http://vimhelp.appspot.com/options.txt.html#%27undodir%27
http://vimhelp.appspot.com/options.txt.html#%27undofile%27

mkdir ~/.vim/undo
set undodir=~/.vim/undo//
set undofile



https://www.johnhawthorn.com/2012/09/vi-escape-delays/
http://vimhelp.appspot.com/options.txt.html#%27esckeys%27
http://vimhelp.appspot.com/options.txt.html#%27timeoutlen%27

set timeoutlen=1000
set ttimeoutlen=0



COLORS

http://vimcolors.com/
http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
https://stackoverflow.com/questions/15375992/vim-difference-between-t-co-256-and-term-xterm-256color-in-conjunction-with-tmu
http://vi.stackexchange.com/questions/3397/how-do-i-conditionally-set-colorscheme

https://github.com/vim-airline/vim-airline-themes
https://github.com/vim-airline/vim-airline/wiki/Screenshots

http://vimhelp.appspot.com/syntax.txt.html
http://vimhelp.appspot.com/options.txt.html#%27background%27


Plug 'https://github.com/morhetz/gruvbox'

set background=dark
let gruvbox_contrast_dark = 'hard'
let gruvbox_contrast_light = 'hard'
silent! color gruvbox


Plug 'https://github.com/tomasr/molokai'

silent! color molokai


Plug 'https://github.com/nanotech/jellybeans.vim'

silent! color jellybeans


Plug 'https://github.com/sjl/badwolf'

silent! color badwolf


Plug 'https://github.com/alessandroyorba/despacio'

let despacio_Pitch = 1
silent! color despacio



SYNTASTIC

https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic-checkers.txt


syntastic-checkers-css

http://csslint.net/
https://github.com/CSSLint/csslint

npm install -g csslint



syntastic-checkers-javascript

http://eslint.org/
https://github.com/eslint/eslint

npm install -g eslint



syntastic-checkers-php

https://phpmd.org/

wget -c http://static.phpmd.org/php/latest/phpmd.phar -O /usr/local/bin/phpmd
chmod +x /usr/local/bin/phpmd



syntastic-checkers-sh

https://www.shellcheck.net/
https://github.com/koalaman/shellcheck

pkg install hs-ShellCheck



syntastic-checkers-vim

https://github.com/syngan/vim-vimlint
https://github.com/vim-jp/vim-vimlparser

Plug 'https://github.com/syngan/vim-vimlint'
Plug 'https://github.com/vim-jp/vim-vimlparser'


https://github.com/Kuniwak/vint
https://nerd.h8u.net/2016/01/29/installing-python-package-manager-pip-on-freebsd/
http://www.freshports.org/devel/py-pip/

python -m ensurepip
pip install vim-vint



CTAGS

https://en.wikipedia.org/wiki/Ctags
https://www.freshports.org/devel/ctags/
http://vim.wikia.com/wiki/Browsing_programs_with_tags
https://andrew.stwrt.ca/posts/vim-ctags/
https://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks



UNIVERSAL CTAGS

https://ctags.io/
https://github.com/universal-ctags/ctags
http://docs.ctags.io/en/latest/autotools.html
http://docs.ctags.io/en/latest/optlib.html
https://github.com/shawncplus/phpcomplete.vim/wiki/Getting-better-tags


pkg install -y autoconf
pkg install -y automake
pkg install -y pkgconf

git clone https://github.com/universal-ctags/ctags.git

cd ctags
sh autogen.sh
sh configure --program-prefix=u
make
make install


.ctags

--kinds-PHP=-a


uctags --help
uctags --list-fields
uctags --list-extras
uctags --list-kinds=PHP



TAGBAR

https://github.com/majutsushi/tagbar
https://github.com/majutsushi/tagbar/blob/master/doc/tagbar.txt

Plug 'https://github.com/majutsushi/tagbar'

" tagbar

let tagbar_ctags_bin='uctags'



GUTENTAGS

https://github.com/ludovicchabant/vim-gutentags
https://github.com/ludovicchabant/vim-gutentags/blob/master/doc/gutentags.txt
https://bolt80.com/gutentags/

Plug 'https://github.com/ludovicchabant/vim-gutentags'

" gutentags

let gutentags_ctags_executable='uctags'
let gutentags_cache_dir='~/.vim/tags'
let gutentags_project_root=['robots.txt']



MUCOMPLETE

https://github.com/lifepillar/vim-mucomplete

http://vimhelp.appspot.com/options.txt.html#%27complete%27
http://vimhelp.appspot.com/options.txt.html#%27completeopt%27
http://vimhelp.appspot.com/options.txt.html#%27shortmess%27
http://vimhelp.appspot.com/options.txt.html#%27belloff%27
http://vimhelp.appspot.com/options.txt.html#%27visualbell%27


Plug 'https://github.com/lifepillar/vim-mucomplete'

set belloff=ctrlg
set completeopt=menuone,preview,noinsert

" mucomplete

let mucomplete#enable_auto_at_startup = 1



MUCOMPLETE ULTISNIPS

https://github.com/lifepillar/vim-mucomplete
https://github.com/lifepillar/vim-mucomplete/blob/master/doc/mucomplete.txt

https://github.com/sirver/ultisnips
https://github.com/SirVer/ultisnips/blob/master/doc/UltiSnips.txt

http://vimhelp.appspot.com/intro.txt.html#%3C%3E
http://vimhelp.appspot.com/eval.txt.html#pumvisible%28%29
http://vimhelp.appspot.com/eval.txt.html#expr-string
http://vimhelp.appspot.com/eval.txt.html#literal-string
https://stackoverflow.com/questions/18546533/execute-plug-commands-in-vim
http://vimhelp.appspot.com/map.txt.html#%3CPlug%3E
http://vimhelp.appspot.com/map.txt.html#map_bar
http://vimhelp.appspot.com/map.txt.html#%3Amap-expression
https://stackoverflow.com/questions/34817344/c-r-versus-expr-in-mappings
https://stackoverflow.com/questions/10862457/what-does-c-r-means-in-vim
http://vimhelp.appspot.com/insert.txt.html#i_CTRL-R
http://vimhelp.appspot.com/insert.txt.html#i_CTRL-R_=
http://vimhelp.appspot.com/cmdline.txt.html#c_CTRL-R
http://vimhelp.appspot.com/cmdline.txt.html#c_CTRL-R_=
http://vimhelp.appspot.com/insert.txt.html#popupmenu-keys


https://github.com/SirVer/ultisnips/issues/376

inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"


https://github.com/lifepillar/vim-mucomplete/blob/master/doc/mucomplete.txt

imap <expr> <c-j> (pumvisible() ? "\<c-y>" : "") . "\<plug>snipMateNextOrTrigger"



inoremap <expr> <C-e> mucomplete#popup_exit('<C-e>')
inoremap <expr> <C-y> mucomplete#popup_exit('<C-y>')
inoremap <expr> <CR> mucomplete#popup_exit('<CR>') . (pumvisible() && len(UltiSnips#SnippetsInCurrentScope()) ? '<C-R>=UltiSnips#ExpandSnippet()<CR>' : '')



VIMCOMPLETESME

https://github.com/ajh17/VimCompletesMe
https://www.reddit.com/r/vim/comments/2t52yd/what_do_you_do_use_for_autocomplete_plugin_or/
https://medium.com/@saaguero/improving-performance-in-vim-9b33598c8eaf

http://vim.wikia.com/wiki/Omni_completion
http://vim.wikia.com/wiki/Improve_completion_popup_menu
http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE

https://stackoverflow.com/questions/13232262/how-to-disable-tab-completion-for-tags-in-vim
https://vi.stackexchange.com/questions/5732/tag-navigation-using-ctrl-does-not-work-with-non-english-keyboard-on-windows
https://vi.stackexchange.com/questions/11349/ctrl-n-completion-takes-a-long-time-for-scanning-included-file

http://vimhelp.appspot.com/options.txt.html#%27complete%27
http://vimhelp.appspot.com/options.txt.html#%27completeopt%27
http://vimhelp.appspot.com/insert.txt.html#ins-completion
http://vimhelp.appspot.com/tagsrch.txt.html
http://vimhelp.appspot.com/pattern.txt.html


Plug 'https://github.com/ajh17/VimCompletesMe'

" vimcompletesme

set complete=.,w,b,u
set completeopt=menu,preview



PHP

https://www.drupal.org/docs/develop/development-tools
https://github.com/vim-syntastic/syntastic
https://github.com/vim-syntastic/syntastic/blob/master/doc/syntastic-checkers.txt
https://github.com/exakat/php-static-analysis-tools
https://medium.com/@ondrejmirtes/three-pillars-of-static-analysis-in-php-f3f5d7bfd61b
https://phpmd.org/

http://vimawesome.com/plugin/php-vim-shouldve-said-no
http://vimawesome.com/plugin/phpcomplete-vim

Plug 'https://github.com/shawncplus/phpcomplete.vim'
Plug 'https://github.com/stanangeloff/php.vim'



COLORIZER

https://github.com/chrisbra/colorizer

" colorizer

let colorizer_auto_filetype = 'css,html'



PLUGINS

http://vim.wikia.com/wiki/How_to_write_a_plugin#References
http://vimhelp.appspot.com/usr_41.txt.html#write-plugin

http://vim.wikia.com/wiki/Get_the_name_of_the_current_file
http://vimhelp.appspot.com/eval.txt.html#expand()
https://stackoverflow.com/questions/4976776/how-to-get-path-to-the-current-vimscript-being-executed



ASCII ART

https://www.maketecheasier.com/figlet-and-toilet-asciify-your-text-art/

http://www.figlet.org/
http://caca.zoy.org/wiki/toilet

http://www.freshports.org/misc/figlet/
http://www.freshports.org/misc/toilet/



NEOVIM

https://neovim.io/
https://github.com/neovim/neovim
https://github.com/neovim/neovim/wiki/FAQ

https://github.com/junegunn/vim-plug
https://github.com/junegunn/vim-plug/wiki/faq
https://github.com/junegunn/vim-plug/issues/559
https://www.reddit.com/r/neovim/comments/3z6c2i/how_does_one_install_vimplug_for_neovim/

https://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/
https://github.com/akrawchyk/awesome-vim

https://github.com/vim/vim/blob/master/runtime/doc/version8.txt
https://github.com/vim/vim/blob/master/runtime/defaults.vim
https://neovim.io/doc/user/vim_diff.html
https://neovim.io/doc/user/options.html



GVIM

http://www.vim.org/
http://ftp.vim.org/pub/vim/pc/gvim80-586.exe

https://git-scm.com/

https://www.python.org/
https://stackoverflow.com/questions/4718122/how-to-enable-python-support-in-gvim-on-windows

https://ctags.io/
https://github.com/universal-ctags/ctags
https://github.com/universal-ctags/ctags-win32



PATH

C:\Program Files\Git\bin
C:\Program Files (x86)\Python27\
C:\Program Files (x86)\Python27\Scripts
C:\Programs\Ctags



PLUG

https://github.com/junegunn/vim-plug
https://github.com/junegunn/vim-plug/wiki/faq

https://stackoverflow.com/questions/3098521/vimscript-how-to-detect-if-specific-file-exists
http://vimhelp.appspot.com/eval.txt.html#filereadable%28%29
http://vimhelp.appspot.com/eval.txt.html#glob%28%29

https://stackoverflow.com/questions/1549263/how-can-i-create-a-folder-if-it-doesnt-exist-from-vimrc
http://vimhelp.appspot.com/eval.txt.html#isdirectory%28%29
http://vimhelp.appspot.com/eval.txt.html#mkdir%28%29

https://juliankay.com/development/setting-up-vim-to-work-with-powershell/
https://stackoverflow.com/questions/1802127/how-to-run-a-powershell-script-without-displaying-a-window

https://stackoverflow.com/questions/4619088/windows-batch-file-file-download-from-a-url
https://ss64.com/nt/syntax-variables.html
https://stackoverflow.com/questions/5669194/how-can-i-escape-the-and-characters-in-a-vim-command
https://stackoverflow.com/questions/6037146/how-to-execute-powershell-commands-from-a-batch-file
https://www.msxfaq.de/code/powershell/pshttpclient.htm
https://msdn.microsoft.com/powershell/reference/3.0/microsoft.powershell.utility/Invoke-WebRequest

https://superuser.com/questions/194715/how-to-make-vim-settings-computer-dependent-in-vimrc
http://vimhelp.appspot.com/eval.txt.html



if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



if !filereadable($HOME . '\vimfiles\autoload\plug.vim')
  if !isdirectory($HOME . '\vimfiles\autoload')
    call mkdir($HOME . '\vimfiles\autoload', 'p')
  endif

  if has('unix')
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  elseif has('win32')
    silent !bitsadmin /transfer plug https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \%USERPROFILE\%\.vim\autoload\plug.vim
  elseif has('win64')
    silent !powershell -Command Invoke-WebRequest -Uri https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -OutFile $HOME\vimfiles\autoload\plug.vim
  endif

  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



VIMRC

http://vimhelp.appspot.com/mlang.txt.html#%3Alanguage
http://vimhelp.appspot.com/options.txt.html#%27langmenu%27

http://vimhelp.appspot.com/options.txt.html#%27guifont%27
http://vimhelp.appspot.com/options.txt.html#%27guioptions%27



PLATFORM

https://www.reddit.com/r/vim/comments/27evpc/crossplatform_vim_configuration_windows_and_linux/
https://stackoverflow.com/questions/3942783/pros-and-cons-for-each-vimrc-cross-platform-solution
https://superuser.com/questions/1074022/how-can-i-remove-the-dependency-of-having-a-vimfiles-folder-in-windows
https://github.com/VundleVim/Vundle.vim/wiki/Tips-and-Tricks

https://vi.stackexchange.com/questions/3730/environment-variable-for-personal-runtime-path-vim-on-nix-vimfiles-on-w

http://vimhelp.appspot.com/options.txt.html#%27runtimepath%27
http://vimhelp.appspot.com/eval.txt.html#expand%28%29
http://vimhelp.appspot.com/eval.txt.html#glob%28%29

http://vimhelp.appspot.com/starting.txt.html#.vimrc
http://vimhelp.appspot.com/starting.txt.html#_vimrc
http://vimhelp.appspot.com/options.txt.html#%27viminfo%27
http://vimhelp.appspot.com/gui.txt.html#gui-init
http://vimhelp.appspot.com/options.txt.html#%24HOME
http://vimhelp.appspot.com/editing.txt.html#home-replace



http://vimhelp.appspot.com/options.txt.html#%27runtimepath%27

UNIX    $HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
PC      $HOME/vimfiles,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/vimfiles/after



http://vim.1045645.n5.nabble.com/Windows-path-and-quot-quot-HOME-td1151589.html

http://vimhelp.appspot.com/os_dos.txt.html#dos-backslash
http://vimhelp.appspot.com/options.txt.html#option-backslash
http://vimhelp.appspot.com/cmdline.txt.html#filename-backslash

For internal use, Vim for Windows can use either '\' or '/' as path
separators, or even both of them in the same path. However, '\' is also
sometimes used to escape characters which would otherwise have a
"separator" meaning. This depends on context. When Vim knows that some
value is a file/folder name, it will usually interpret any of '/', '\'
or '\\' as a path separator, to be passed to the OS as a single
backslash, except where a backslash is obviously meant as an escape
prefix. As a general rule, single-quoted strings are used literally
while backslashes in double-quoted strings or (as in :set) in unquoted
strings are usually meant as escape characters. When a single string is
interpreted repeatedly before being used, it may be necessary to double
the backslashes as many times as there are "passes".

see
        :help dos-backslash
        :help option-backslash
        :help filename-backslash

For internal use also, Vim uses $NAME to designate environment
variables, and ~ (at the start of a path) as a synonym for $HOME, like
Unix and not like Dos.

When paths are to be passed to a Dos/Windows program, including but not
limited to the shell (COMMAND.COM or cmd.exe), they are to be expressed
according to Dos/Windows conventions, with only '\' as path separators,
and possibly with double-quoting if spaces within the path would
otherwise cause premature termination of the string. With the default
settings of the relevant options, Vim is usually clever enough to pass
the right value, but it may err in borderline cases.

When environment variables or the name of a home directory are to be
passed to a Dos/Windows program, Vim usually passes the value, not the
name; however if you want to pass the name for evaluation by a Dos shell
you must use %NAME%, not $NAME and not ~, because that is the Dos
convention.



HOME

https://ss64.com/nt/syntax-variables.html
http://vim.wikia.com/wiki/Environment_variables

http://vim.1045645.n5.nabble.com/WinNT-XP-2003-USERPROFILE-vs-HOMEPATH-td1195975.html
http://vim.1045645.n5.nabble.com/How-to-override-HOME-on-Windows-NT-XP-td1156901.html

http://vimhelp.appspot.com/options.txt.html#%24HOME

On MS-Windows, if $HOME is not defined as an environment variable, then
at runtime Vim will set it to the expansion of $HOMEDRIVE$HOMEPATH.



INDENT

http://vim.wikia.com/wiki/Indenting_source_code
http://vim.wikia.com/wiki/Fix_indentation
https://stackoverflow.com/questions/27609084/how-do-i-execute-command-similar-to-gg-g-in-vim-without-going-to-the-top-of-the

mzgg=G`z
gg=G``


