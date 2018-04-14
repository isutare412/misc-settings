call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'craigemery/vim-autotag'
Plug 'davidhalter/jedi-vim'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" syntastic setting
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14'
let g:syntastic_python_checkers=['flake8', 'python3']
noremap <C-w>t :SyntasticToggleMode<CR>

" jedi-vim
let g:jedi#goto_command = "<leader>g"
let g:jedi#goto_assignments_command = ""
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = ""
let g:jedi#rename_command = "<leader>r"
autocmd FileType python setlocal completeopt-=preview

" symbol highlight on carret
let HlUnderCursor=1
autocmd CursorMoved * exe exists("HlUnderCursor")?HlUnderCursor?printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""

" Tlist
let Tlist_Auto_Open=0

syntax on " 문법 강조
filetype on " detect filetype
set t_Co=256 " color 설정
set term=xterm-256color " 256color 설정

colorscheme solarized
set background=dark
set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h12

set nocompatible " Vi 이후로 추가된 Vim 기능들을 사용함

set clipboard=unnamed " OS와 clipboard 공유
set number " row number 표시
set rnu " 상대적 line 넘버링
set scrolloff=2 " 위아래 2 줄 비어둠
set colorcolumn=79 " maximum line length
set wrap " word wrap 가능하게 설정
set linebreak " wrap을 word 단위로
set backspace=indent,eol,start " backspace로 삽입한 위치 이상의 제거 허용
set autoindent " 자동 들여쓰기
set cindent " C 언어 자동 들여쓰기
set smartindent " 스마트 자동 들여쓰기
set smarttab " 탭 자동
set nowrapscan " 찾기에서 끝에 이르면 계속하여 찾지 않음
set splitright " sp right
set splitbelow " vs below
"set ruler " 명령어줄에 커서 위치를 보여줌
set undofile " 실행취소 파일
set laststatus=2 " 상태표시줄 항상 출력
set expandtab " tab to space
set tabstop=4 " tab 간격
set softtabstop=4 " tab 간격2
set shiftwidth=4 " >>, << 간격
" set mouse=a  " 마우스 휠 스크롤
set showcmd " 명령어를 상태라인에 보여줌
set showmatch " 매치되는 괄호의 반대쪽을 보여줌
set incsearch " 점진적으로 찾기
set hlsearch " 찾기 하이라이트
set linespace=3 " 줄간격
set title " 터미널에 Vim 파일 제목 넘기기
set nobackup " 백업 파일 만들지 않음
set nobomb " BOM 제거
set fencs=ucs-bom,utf-8,default,cp949 "한글 인코딩 환경 설정
set enc=utf-8
set tenc=utf-8

let @b=':set ts=2 sts=2 sw=2'
let @f=':set ts=4 sts=4 sw=4'

