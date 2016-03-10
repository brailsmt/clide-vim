" Compiler: Checkstyle
" Maintainer:   Doug Kearns <djkea2@mugca.its.monash.edu.au>
" URL:      http://mugca.its.monash.edu.au/~djkea2/vim/compiler/checkstyle.vim
" Last Change:  2003 May 11

if exists("current_compiler")
  finish
endif
let current_compiler = "clide-checkstyle"

if !exists("g:clide_vim_checkstyle_jar")
    echom "g:clide_vim_checkstyle_jar is not set!"
end
if !exists("g:clide_vim_checkstyle_config")
    echom "g:clide_vim_checkstyle_config is not set!"
end

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=java\ -jar\ g:clide_vim_checkstyle_jar\ -f\ plain\ -c\ g:clide_vim_checkstyle_config\ %
CompilerSet errorformat=%f:%l:\ %m,%f:%l:%v:\ %m,%-G%.%#
