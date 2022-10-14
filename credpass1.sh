#!/bin/bash


YELLOW=$(tput setaf 3)
GREEN=$(tput setaf 2)
RED=$(tput setaf 1)
BLUE=$(tput setaf 4)
GGG=$(tput setaf 5)
CYN=$(tput setaf 7)
STAND=$(tput sgr 0)
BOLD=$(tput bold)
pwd=$(pwd)

echo -e "${RED}
  ┏━┓  ┳━┓  ┳━┓  ┳━┓  ┳━┓  ┳━┓  ┓━┓  ┓━┓
  ┃    ┃┳┛  ┣━   ┃ ┃  ┃━┛  ┃━┫  ┗━┓  ┗━┓
  ┗━┛  ┇┗┛  ┻━┛  ┇━┛  ┇    ┛ ┇  ━━┛  ━━┛ ${STAND} v.1"
echo -e "                             by-$STAND$BOLD rouze_d"
echo -e "$BLUE$BOLD Simple Password Maker for SocialMedia BrutForce $STAND "
echo -e "$BOLD Input tagret profile info.. $STAND"
echo -e ""
echo -e " first name           : \c"
read fname
echo -e " last name            : \c"
read lname
echo -e " day of birth (dd)    : \c"
read day
echo -e " month of birth (mm)  : \c"
read month
echo -e " year of birth (yyyy) : \c"
read year
echo ""
#echo -e " filename output : \c"
#read name

# echo -e " no IC tengah  : \c"
# read ic1
# echo -e " no IC hujung  : \c"
# read ic2

yr=`echo -e $year | tail -c 3`

num2=`date -d last-year +%Y`
#num2=`date -d last-year | tail -c 5`
old=`shuf -i $year-$num2 | wc -l`

# echo -e "$yr$month$day-$ic1-$ic2" >> pass.pass.txt
# echo -e "$yr$month$day$ic1$ic2" >> pass.pass.txt
echo -e "$day$month$yr" >> pass.pass.txt
echo -e "$day$month$year" >> pass.pass.txt
echo -e "$yr$month$day" >> pass.pass.txt
echo -e "$year$month$day" >> pass.pass.txt
echo -e "$fname$yr" >> pass.pass.txt
echo -e "$fname$year" >> pass.pass.txt
echo -e "$fname$lname" >> pass.pass.txt
echo -e "$fname$lname$yr" >> pass.pass.txt
echo -e "$fname$lname$year" >> pass.pass.txt
echo -e "$day$month$yr$fname" >> pass.pass.txt
echo -e "$day$month$year$fname" >> pass.pass.txt
echo -e "$fname\a-$yr" >> pass.pass.txt
echo -e "$fname\a-$year" >> pass.pass.txt
echo -e "$yr$fname" >> pass.pass.txt
echo -e "$year$fname" >> pass.pass.txt
echo -e "$yr$fname$lname" >> pass.pass.txt
echo -e "$year$fname$lname" >> pass.pass.txt
echo -e "$fname$old" >> pass.pass.txt
echo -e "$fname\a-$old" >> pass.pass.txt



echo -e "$STAND"
rm -f $fname.txt

cat pass.pass.txt | tr -d '' > $fname.txt

rm -f pass.pass.txt
echo ""
echo -e " You Password Woldlist on$GREEN$BOLD $pwd/$fname.txt$STAND"
echo -e " You Can Only Input$RED$BOLD 19 WordList (facebook)$STAND Before You Get Limited Login."
echo -e "$BOLD GOOD LUCK.. GOD BLESS YOU\n"
