#!/bin/bash
a=$(type -t git)
# git --version 2>&1 >/dev/null # improvement by tripleee
# GIT_IS_AVAILABLE=$?
# echo $a
if [[ "$a" == "" ]]
then
    git
    exit 1
fi 
cd
#I cant install it on Desktop as there is an error that i dont want to fix every time
#do "Desktop/cowsay/share/cows/default.cow" failed, '.'
# is no longer in @INC; did you mean do 
#"./Desktop/cowsay/share/cows/default.cow"? 
#at Desktop/cowsay/cowthink line 341.

#fixed it i forgot ./ at alias
cd Desktop
git clone https://github.com/nuwanarti/cowsay.git
cd cowsay
chmod +x cowsay cowthink

cd
echo "alias cowthink='./Desktop/cowsay/cowthink'
alias cowsay='./Desktop/cowsay/cowsay'" >> .bashrc


echo "
  _______________________________
<  Thankyou for installing cowsay >
  -------------------------------
   \\
    \\
       ___  
     {~._.~}
      ( Y )
     ()~*~()   
     (_)-(_)  "