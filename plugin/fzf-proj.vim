function! s:defn(var, val)
  if !exists(a:var)
    exec 'let '.a:var."='".a:val."'"
  endif
endfunction

" defaults
call s:defn("g:fzf#proj#project_dir", "$HOME/code")
call s:defn("g:fzf#proj#max_proj_depth", 1)
call s:defn("g:fzf#proj#project#open_new_tab", 1)
call s:defn("g:fzf#proj#fancy_separator", "→")

command! -bang Projects        call fzf#proj#select_proj(<bang>0)

noremap <plug>Projects :Projects<CR>
noremap <plug>TProjects :Projects!<CR>
