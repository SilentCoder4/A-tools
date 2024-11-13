#!/bin/bash
###This is code is written by SilentCoder2###
#free to edit...;)
clear
#COLOR>>>TEXT COLOR code>>>BACKGROUND COLOR Code
#===================================================|#
#1Black		=	\e[30m	>>>	\e[40m	    |
#2Red		=	\e[31m	>>>	\e[41m      |
#3Green		=	\e[32m	>>>	\e[42m	    |
#4Yellow	=	\e[33m	>>>	\e[43m 	    |
#5Blue		=	\e[34m	>>>	\e[44m	    |
#6Magenta	=	\e[35m	>>>	\e[45m	    |
#7Cyan		=	\e[36m	>>>	\e[46m	    |
#8Gray		=	\e[90m	>>>	\e[100m	    |
#9White		=	\e[97m	>>>	\e[107m	    |
#10Light Gray	=	\e[37m	>>>	\e[47m       `|
#11Light Red	=	\e[91m	>>>	\e[101m	      |
#12Light Green	=	\e[92m	>>>	\e[102m	      |
#13Light Yellow	=	\e[93m	>>>	\e[103m	      |
#14Light Blue	=	\e[94m	>>>	\e[104m	      |
#15Light Magenta=	\e[95m	>>>	\e[105m	      |
#16Light Cyan	=	\e[96m	>>>	\e[106m	      |
#Reset code 	=	\e[0m			      |
#=====================================================|#
chars="/-\|"
l=1
while [ $l -le 2 ]
do
    for (( i=0; i<${#chars}; i++ )); do
        sleep 0.2
        echo -en "\e[93mInitializing---------------\e[91m${chars:$i:1}" "\r\e[0m"
    done
    l=$(( $l + 1))
done
banner()	{
    clear
    echo -e '\e[96m
 █████╗    ████████╗ ██████╗  ██████╗ ██╗     ███████╗
██╔══██╗   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
███████║█████╗██║   ██║   ██║██║   ██║██║     ███████╗
██╔══██║╚════╝██║   ██║   ██║██║   ██║██║     ╚════██║
██║  ██║      ██║   ╚██████╔╝╚██████╔╝███████╗███████║
╚═╝  ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝ \e[0m\t\e[91mv.1
    \t\t\t\t\tBY \e[92mSilentCoder4\e[0m'
}
tools_list()	{
    echo -e '
\e[96m[\e[93m1\e[96m]Psishing Toolt\t\e[96m[\e[93m2\e[96m]Instagram Info Gathering
\e[96m[\e[93m3\e[96m]Grab Location\t\e[96m[\e[93m4\e[96m]TxT Bombing
\e[96m[\e[93m5\e[96m]Set Banner\t\t\e[96m[\e[93m6\e[96m]Exit\n'
}
banner
tools_list
input()	{
    read -p $'\e[92m[\e[0m\e[97m*\e[0m\e[92m] Choose an option: \e[0m' INPUT
}
input
#====================================Download()tools===================================#
rep()	{
    sleep 1
    clear
    #cd $HOME/A-tools
    bash atool.sh
}
bye_atool()	{
    clear
    echo -e "\e[31m";figlet -f digital Bye
    sleep 0.2
    clear
    echo -e "\e[32m";figlet -f digital Bye
    sleep 0.2
    clear
    echo -e "\e[33m";figlet -f digital Bye
    sleep 0.2
    clear
    echo -e "\e[34m";figlet -f digital Bye
    sleep 0.2
    clear
    exit
}
Psishing_Tool()	{
    echo -en "\e[93mDownloading SocialPhish---------------\e[91m" "\r\e[0m"
    sleep 0.5
    cd $HOME/tools
    link='https://github.com/xHak9x/SocialPhish.git'
    git clone $link
    rep
}
Instagram_Info_Gathering()	{
    echo -en "\e[93mDownloading osi.ig---------------\e[91m" "\r\e[0m"
    sleep 0.5
    cd $HOME/tools
    link='https://github.com/th3unkn0n/osi.ig.git'
    git clone $link
    rep
}
Grab_Location()	{
    echo -en "\e[93mDownloading seeker---------------\e[91m" "\r\e[0m"
    sleep 0.5
    cd $HOME/tools
    link='https://github.com/thewhiteh4t/seeker.git '
    git clone $link
    rep
}
TxT_Bombing()	{
    echo -en "\e[93mDownloading TBomb---------------\e[91m" "\r\e[0m"
    sleep 0.5
    cd $HOME/tools
    link='https://github.com/TheSpeedX/TBomb.git'
    git clone $link
    rep
}
Set_banner()	{
    echo -en "\e[93mDownloading TBomb---------------\e[91m" "\r\e[0m"
    sleep 0.5
    cd $HOME/tools
    link='no link'
    echo "no download"
    rep
}
#=============================================================================================#
case "$INPUT" in
    1)
        Psishing_Tool
    ;;
    2)
        Instagram_Info_Gathering
    ;;
    3)
        Grab_Location
    ;;
    4)
        TxT_Bombing
    ;;
    5)
        Set_banner
    ;;
    6)
        bye_atool
    ;;
    *)
        echo -e "\e[91m Invalid Option\e[0m"
        sleep 0.8
        rep
esac
clear
