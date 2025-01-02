alias setprompt 'set prompt="[%m ${cwd}]$ "'
setprompt             # to set the initial prompt
alias cd 'chdir \!* && setprompt'

if (-e ~/.cshrc.alias) then
 source ~/.cshrc.alias
endif

if (-e ~/.complete.tcsh) then
 source ~/.complete.tcsh
endif

set autolist=ambiguous

setenv SVN_DEPO  svn+ssh://10.1.30.50/svn
setenv SVN_SH  ${SVN_DEPO}/bstip/ip_sh
setenv SVN_SZ  ${SVN_DEPO}/bstip/ip_sz
setenv SVN_SG  ${SVN_DEPO}/bstip/ip_sg
setenv SVN_RV  ${SVN_SH}/c1200/database/soc/hw/ips/digital/riscv
setenv SVN_RVC ${SVN_DEPO}/bstip/net/rvc

set nobeep

if (-e /Tools/utility/CAD/env/dv.cshrc) then
  source /Tools/utility/CAD/env/dv.cshrc
  module use --append ~/.modulefiles
endif

setenv SVN_EDITOR vim
set path = (/projects/shengping.zhao/A2000/bstip/verif/infra/tools /home/shengping.zhao/DEV/xfuse $path)
setenv NOVAS_RC       ~/.novas.rc
setenv NOVAS_GUICONF  ~/.novas.conf

module load vscode/1.85.1
  alias vv '/home/shengping.zhao/editor/bin/editor -g'
alias h 'history'
alias rm 'rm -i'
alias grepc 'grep --color -R -n'
alias la 'ls -a'

alias vpi 'vim +PluginInstall +qall'
alias vpc 'vim +PluginClean +qall'
alias vpu 'vim +PluginUpdate +qall'

alias untar 'tar -xvzf'
alias tarc 'tar cvzf'

alias bi  'bsub -Ip'

alias genctag 'ctags -R --tag-relative=yes --languages=systemverilog -f '
