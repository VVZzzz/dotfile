## Linux终端配置
可以参考https://zhuanlan.zhihu.com/p/334293505
1. 设置Zsh为默认解释器
https://github.com/ohmyzsh/ohmyzsh
2. 使用Oh-My-Zsh进行设置
https://github.com/ohmyzsh/ohmyzsh
3. Oh-My-Zsh配置方案
    - 主题: robbyrussell
    - 插件: 需要单独安装的
        - zsh-syntax-highlighting 语法高亮
        ```  
        cd ~/.oh-my-zsh/custom/plugins/  
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git    
        vi ~/.zshrc   
        plugins = (
            ...
            zsh-syntax-highlighting(必须在最后一个)
        )
        然后在文件的最后一行添加：source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        ```  
        - zsh-autosuggestion 自动补全
        https://github.com/zsh-users/zsh-autosuggestions
        ```  
        cd ~/.oh-my-zsh/custom/plugins/  
        git clone https://github.com/zsh-users/zsh-autosuggestions.git    
        vi ~/.zshrc   
        plugins = (
            zsh-autosuggestions
        )
        然后在文件的最后一行添加：source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
        ```  
        -  git-open
        提供一个 git-open 命令，在浏览器中打开当前所在 git 项目的远程仓库地址。
        ```
        git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open
        vi ~/.zshrc   
        plugins = (
            git-open
        )
        ```

    - 插件: 自带的alias插件
        - git git命令的简写
        ```
        定义了有关 git 的 alias。常用的有
        gaa = git add --all
        gcmsg = git commit -m
        ga = git add
        gst = git status
        gp = git push
        ```
        - tmux tmux命令缩写
        ```
        定义了有关 tmux 的 alias。常用的有

        tl = tmux list-sessions
        tkss = tmux kill-session -t
        ta = tmux attach -t
        ts = tmux new-session -s
        ```
    - 插件: oh-my-zsh自带的插件
        - gitignore 
        提供一条 gi 命令，用来查询 gitignore 模板。比如你新建了一个 python 项目，就可以用
        ```
        gi python > .gitignore 
        来生成一份 gitignore 文件。
        ```
        - Z
        https://github.com/rupa/z
        目录间快速跳转,不用再一直 cd 了,cd 命令进入 ~/user/github/Youthink 文件夹，下一次再想进入 Yourhink 文件夹的时候,直接 z youthink 即可,或者只输入 youthink 的一部分 youth 都行
        ```
        z -x 无效路径 //删除无效路径
        ```
        - 快速跳转(zsh自带快捷键)
        ```
        cd - 命令
        TAB 选择近期的路径
        ```
        - vi-mode (感觉有点复杂,没使用)
        像vim一样写命令
        https://github.com/jeffreytse/zsh-vi-mode
        - safe-paste
        粘贴脚本到zsh时 , 不会自动执行
4. Zsh快捷键
https://juejin.cn/post/6844903849572974605
5. tmux
https://github.com/tmux/tmux 安装tmux
6. tmux 用法
https://www.ruanyifeng.com/blog/2019/10/tmux.html
7. 按照oh-my-tmux进行配置(记一下它的快捷键,很方便)
https://github.com/gpakosz/.tmux

## oh-my-tmux 快捷键
```<prefix>``` means you have to either hit ```Ctrl + a ```or ```Ctrl + b```
```<prefix> c``` means you have to hit Ctrl + a or Ctrl + b followed by c
```<prefix> C-c ```means you have to hit Ctrl + a or Ctrl + b followed by Ctrl + c

`<prefix> e` opens ~/.tmux.conf.local with the editor defined by the $EDITOR environment variable (defaults to vim when empty)

`<prefix> r` reloads the configuration
`C-l` clears both the screen and the tmux history
`<prefix> C-c` creates a new session
`<prefix> C-f` lets you switch to another session by name
`<prefix> C-h` and `<prefix> C-l `let you navigate windows (default <prefix> n and <prefix> p are unbound)
`<prefix> Tab` brings you to the last active window
`<prefix> x` kill the current pane
`<prefix> -` splits the current pane vertically
`<prefix> _ `splits the current pane horizontally
`<prefix> h`, `<prefix> j`, `<prefix> k` and `<prefix> l` let you navigate panes ala Vim
`<prefix> H`, `<prefix> J`, `<prefix> K`, `<prefix> L` let you resize panes
`<prefix> <` and `<prefix> >` let you swap panes
`<prefix> +` maximizes the current pane to a new window
`<prefix> m` toggles mouse mode on or off
`<prefix> U` launches Urlview (if available)
`<prefix> F` launches Facebook PathPicker (if available)
`<prefix> Enter` enters copy-mode
`<prefix> b` lists the paste-buffers
`<prefix> p` pastes from the top paste-buffer
`<prefix> P` lets you choose the paste-buffer to paste from

Bindings for copy-mode-vi:

`v` begins selection / visual mode
`C-v` toggles between blockwise visual mode and visual mode
`H` jumps to the start of line
`L` jumps to the end of line
`y` copies the selection to the top paste-buffer
`Escape` cancels the current operation


## Go+Vim配置
1. Go 安装
https://golang.org/doc/install
2. GOROOT与GOPATH
https://www.cnblogs.com/ghj1976/archive/2013/03/24/2979668.html
3. Vim安装
建议从源码中下载,从包管理器中下载无法获得python等支持
如果已有了Vim , 查看是否有pyhon3支持.
```vim --version```
若无,则卸载当前Vim.(https://blog.csdn.net/get_set/article/details/51276609)
https://www.vim.org/download.php
https://github.com/vim/vim
安装这个步骤来安装:
https://blog.csdn.net/ISs_Cream/article/details/115282941
4. .vim与.vimrc
若无该文件夹 ,则在~/中创建即可

## Vim 配置
(.vimrc文件)
1. 无插件Vim配置文件vimrc推荐与各VIM配置项解释
   https://vimjc.com/vimrc.html
2. 配色方案
    使用colorschemes插件
    https://github.com/flazz/vim-colorschemes
    使用gruvbox主题
    https://github.com/morhetz/gruvbox


## NerdTree配置
NerdTree
配置详见 https://github.com/preservim/nerdtree
配置见.vimrc文件
- NerdTreeGit: https://github.com/preservim/nerdtree
- NerdTreeTabs: https://github.com/jistr/vim-nerdtree-tabs




## GoVim配置
1. 使用Vundle管理Vim插件
https://github.com/VundleVim/Vundle.vim
2. 安装go-vim
按照这个```https://www.jianshu.com/p/8426cef1f4f5```(解决vim-go执行:GoInstallBinaries失败的问题)
3. 快捷键
    - https://github.com/fatih/vim-go/wiki/Tutorial
    - :GoRun %  or :GoRun(对整个package)
    - :GoBuild 对比官方的gobuild , 这个不会产生二进制文件
    - :GoBuild 会给出一个quickfix窗口,告诉你哪里出错了.
        - 使用:cnext :cprevious 进行错误跳转. :cclose关闭quickfix窗口
    - :GoTest 无论在哪个窗口,执行该命令就会进行测试
    - :GoTestFunc 只会执行在test文件中光标停留的函数
    - :GoTestCompile 只编译测试文件而不测试
    - :GoCoverage :GoCoverageClear , 这是显示Test测试代码的范围(能够测试的函数范围),CoverageClear关闭高亮. 由于这个很常用,所以:GoCoverageToggle相当于这两个功能. :GoCoverageBrowser是使用浏览器进行显示.
        - :GoCoverageToggle绑定快捷键
        ```
        autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
        ```
    - :GoFmt
    - :GoImports可以不仅fmt代码,同样也检查并更改你的imports路径.可以这样搞,使得每次保存时进行GoImports. 主动调用也可以
        ```
        let g:go_fmt_command = "goimports"
        ```
    - vim中的一个很重要的特性 , if和af, if指inner function,af指a function.所以光标放在函数的第一行,进行vif和vaf,会选择函数体和整个函数(包括func doc注释),若不想func doc注释则这样
        ```
        let g:go_textobj_include_function_doc = 0
        ```
    - 使用.vimrc文件提高效率
        - 将:cnext , :cprevious , :cclose绑定快捷键
        ```
        map <C-n> :cnext<CR>
        map <C-m> :cprevious<CR>
        nnoremap <leader>a :cclose<CR>
        ```
        - 在Vim中有两种错误列表一种为quicklist,一 种为location list.:cnext只能用于quicklist,对于locationlist,应使用:lnext系列命令. 所以有些人只使用location list,如下配置
        ```
        let g:go_list_type = "quickfix"
        ```
    - GoVim中的代码跳转
        - ctrl+] 或者 gd可以跳转到函数定义.
        - 虽然可以使用ctrl+o可以跳回去,但是想象一下,你跳转到定义之后,然后再gg到首行之类的,这样ctrl+o也是记住这些位置了,这样就很麻烦.
        - 所以GoVim中使用Ctrl+t,来跳转回去(就是不记住那些除GoToDefinition位置)
        - ]] -> jump to next function
[[ -> jump to previous function
## YCM
1. 安装
    - 首先在vundle中进行下载.
    - 之后安装,可支持多个语言(添加新语言后需要重新编译),见github页
    ```
    cd ~/.vim/plugged/YouCompleteMe
    # 编译，并加入 go 的支持
    python3 install.py --go-completer 
    ```
2. 配置
YCM中的一些快捷键会和ultisnips冲突,需要配置
3. 快捷键
    - 符号查找
    ```
    nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
    nmap <leader>yfd <Plug>(YCMFindSymbolInDocument)
    关闭窗口使用C-w w或Ctrl+C
    ```



## Tips
1. 虚拟机共享宿主机的VPN网络
https://www.yuque.com/guyuehu/blog/fgxogz
https://zhuanlan.zhihu.com/p/46973701
2. vim
    - "fxxx" 查找xxx开头的单词.
    - ";"重复上一个命令
    - q<letter> 开始记录某个letter,再按q进行退出/编辑.使用@<letter>进行重复
    - "/^word" , 只查找行首为word的word
    - "/word$" , 只查找行尾巴为word的word
    - "H" , "M" , "L"移动到当前窗口的第一行 中间行 最后一行
    - "Ctrl+U" , "Ctrl+D" 移动半个窗口
    - "Ctrl+g"  , 显示自己在哪一行的位置

    - "``" 类似Ctrl o , 回到上一个标记点
"Ctrl o"与"Ctrl i"是配套的
    ```
    The "``" command jumps back and forth, between two points.  The CTRL-O command
    jumps to older positions (Hint: O for older).  CTRL-I then jumps back to newer
    positions (Hint: for many common keyboard layouts, I is just next to O).
    Consider this sequence of commands:  

    	33G
    	/^The
    	CTRL-O

    You first jump to line 33, then search for a line that starts with "The".
    Then with CTRL-O you jump back to line 33.  Another CTRL-O takes you back to
    where you started.  If you now use CTRL-I you jump to line 33 again.  And
    to the match for "The" with another CTRL-I.


    	     |	example text   ^	     |
    	33G  |	example text   |  CTRL-O     | CTRL-I
    	     |	example text   |	     |
    	     V	line 33 text   ^	     V
    	     |	example text   |	     |
           /^The |	example text   |  CTRL-O     | CTRL-I
    	     V	There you are  |	     V
    		example text

    	Note:
    	CTRL-I is the same as <Tab>.

    ```

    - "cc" "dd"

    ```
        there is somerhing grong here  
    	rT	     rt    rw

    	There is something wrong here  

    Using a count with "r" causes that many characters to be replaced with the
    same character.  Example:

    	There is something wrong here  
    			   5rx

    	There is something xxxxx here  
    ```
    - 常用"."command:  "."重复变化的内容的修改!而非重复命令
    ```
    To <B>generate</B> a table of <B>contents  
	f<   find first <     --->
	df>  delete to >	 -->
	f<   find next <	   --------->
	.    repeat df>			    --->
	f<   find next <		       ------------->
	.    repeat df>					    -->
    ```

    - 在visual模式中 ,使用o和O改变选取方向
    - ciw 和 caw , 后者会删除空格 ,前者不会
    - cis 和 cas , 与w区别是更改整个句子,而非word(s: sentence w:word)
    - vis vas viw vaw同理
    - 分割窗口
        - :split
        - :close
        - :only(关闭其他)
        - :new
        - :split name.c(分割窗口,新窗口显示name.c)
        - Ctrl+w w 在两个窗口来回跳转
        - :vsplit
        - :vertical new
        - CTRL-W h	move to the window on the left
	    - CTRL-W j	move to the window below
	    - CTRL-W k	move to the window above
	    - CTRL-W l	move to the window on the right
	    - CTRL-W t	move to the TOP window
	    - CTRL-W b	move to the BOTTOM window
	    - CTRL-W K	move window to the top
        - CTRL-W H	move window to the far left
	    - CTRL-W J	move window to the bottom
	    - CTRL-W L	move window to the far right
        - qall , wall , wqall
        - vim -o one.txt two.txt three.txt(一个窗口打开这3个文件)
        - vimdiff one.txt two.txt
        - 	:edit main.c :vertical diffsplit main.c~
        - Ctrl + w, n, +/- : 调整该窗口高度多少行(可加数字)
        - Ctrl + w, n, >/< : 调整该窗口宽度多少列(可加数字)
        - 寻找Tag时在新标签打开 , 以前寻找tag时使用<C-]>，现在改为<c-w><c-]>即可在新标签打开tag定义。
    - 想在vim中添加/删除文件或文件夹怎么办: 在nerdtree中按m,有几个操作很方便.


## splitjoin
还没搞懂怎么用
```
call plug#begin()
Plug 'fatih/vim-go'
Plug 'AndrewRadev/splitjoin.vim'
call plug#end()
```
这个插件是针对vim的,但支持GO. 主要是gJ和gS这两个命令. J为Join,S为Split


## vim-airline
" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
https://github.com/vim-airline/vim-airline



## VSCode
打开 github 账户同步







