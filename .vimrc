call plug#begin('~/.vim/plugged')
Plug 'https://github.com/the-lambda-church/coquille' | Plug 'def-lkb/vimbufsync'
Plug 'jvoorhis/coq.vim'
Plug 'https://github.com/hynek/vim-python-pep8-indent.git'
Plug 'scrooloose/syntastic'
Plug 'davidhalter/jedi-vim'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
call plug#end()

let g:syntastic_python_python_exec = '/usr/local/Cellar/python3/3.5.1/bin/python3'
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

au FileType coq call coquille#FNMapping()

let g:syntastic_mode_map = { 'mode': 'passive' }
noremap <C-w>t :SyntasticToggleMode<CR>

syntax on " 문법 강조 "
set t_Co=256 " color 설정 "
set term=xterm-256color " 256color 설정 "

colorscheme solarized
set background=dark
set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h12

set nocompatible " Vi 이후로 추가된 Vim 기능들을 사용함 "

set number " row number 표시 "
set rnu " 상대적 line 넘버링 "
set scrolloff=3 " 위아래 3 줄 비어둠 "
set wrap " word wrap 가능하게 설정 "
set linebreak " wrap을 word 단위로 "
set backspace=indent,eol,start " backspace로 삽입한 위치 이상의 제거 허용 "
set autoindent " 자동 들여쓰기 "
set cindent " C 언어 자동 들여쓰기 "
set smartindent " 스마트 자동 들여쓰기"
set smarttab " 탭 자동 "
set nowrapscan " 찾기에서 끝에 이르면 계속하여 찾지 않음 "
set nojoinspaces " J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔 "
set ruler " 명령어줄에 커서 위치를 보여줌 "
set statusline=%<\ [%l,%c]\ [%P]\ %r%m\ %f\ %y\  " 상태표시줄 포맷 "
set undofile " 실행취소 파일 "
set laststatus=2 " 상태표시줄 항상 출력 "
set expandtab " tab to space "
set tabstop=4 " tab 간격 "
set softtabstop=4 " tab 간격2 "
set shiftwidth=4 " >>, << 간격 "
" set mouse=a "  " 마우스 휠 스크롤 "
set showcmd " 명령어를 상태라인에 보여줌 "
set showmatch " 매치되는 괄호의 반대쪽을 보여줌 "
set incsearch " 점진적으로 찾기 "
set hlsearch " 찾기 하이라이트 "
set linespace=3 " 줄간격 "
set title " 터미널에 Vim 파일 제목 넘기기 "
set nobackup " 백업 파일 만들지 않음 "
set nobomb " BOM 제거"
set fencs=ucs-bom,utf-8,default,cp949 "한글 인코딩 환경 설정"
set enc=utf-8
set tenc=utf-8

let @b=':set ts=2 sts=2 sw=2'
let @f=':set ts=4 sts=4 sw=4'

set tags=./tags
set tags+=/Users/LSH/Coding/SNU_files/Operating_Systems/indiOS/os-team8/linux-3.10-sc7730/tags
cs add /Users/LSH/Coding/SNU_files/Operating_Systems/indiOS/os-team8/linux-3.10-sc7730/cscope.out

