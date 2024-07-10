#!/bin/sh
#Takele Amanu  ID: GSR/9608/15
#Tewodros Meheretu ID: GSR/0166/15
#Melikte Yehonnes ID: GSR/4625/15

confirm()
{
if (( $s==1 ))
then
echo "The operation is successfully done to you!"
exit 1
else
exit 1
fi
}

coni()
{
e="09"
i=${#t}
for (( i=0;i<=1; i++ ))
do
v="$v${t:$i:1}"
done
if [ $e == $v ]
then
echo "The operation is successfully done to:""${t[@]}"
exit 1
else
echo "you entered invalid phone number:""${t[@]}"
exit 1
fi
}

out()
{
if ((s==1))
then
coni
else
exit 1
fi
}

all()
{
if (( $z==1 ))
then
printf "To confirm press 1\n""To cancel press other key\n" 
read s
confirm
elif (( $z==2 ))
then
printf "To confirm press 1\n""To cancel press other key\n"
read s
confirm
elif (( $z==3 ))
then
printf "To confirm press 1\n""To cancel press other key\n"
read s
confirm
elif (( $z==5 ))
then
cho
elif (( $z==55 ))
then
printf ""
else
read z
all
fi
}

gif()
{
if (( $d==1 ))
then
printf "To confirm press 1\n""To cancel press other key\n"
read s
out
elif (( $d==2 ))
then
echo "Please enter the phone number."
read t
gift
elif (( $d==55 ))
then
printf ""
else
read d
gif
fi
}

gift()
{
if ((${#t}==10))
then
printf "You entered the phone number:""${t[@]}\n""1.To continue\n""2.To change\n""55.Main menu\n"
read d
gif
elif ((t==55))
then
printf ""
else
echo "The digits you entered is not correct:""${t[@]}"
fi
}

all2()
{
if (( $r==1 ))
then
printf "Please enter the phone number:\n""55.Main menu\n"
read t
gift
elif (( $r==2 ))
then
printf "Please enter the phone number:\n""55.Main menu\n"
read t
gift
elif (( $r==3 ))
then
printf "Please enter the phone number:\n""55.Main menu\n"
read t
gift
elif (( $r==5 ))
then
cho
elif (( $r==55 ))
then
printf ""
else
read r
all2
fi
}

many2 ()
{
if (( $p==1 ))
then
printf "Daily\n""1.Birr 3 for 12min\n""2.Birr 5 for 20min\n""3.Birr 10 for 30min\n""5.Back\n""55.Main menu\n"
read r
all2
elif (( $p==2 ))
then
printf "Weekly\n""1.Birr 15 for 70min\n""2.Birr 20 for 100min\n""3.Birr 25 for 130min\n""5.Back\n""55.Main menu\n"
read r
all2
elif (( $p==3 ))
then
printf "Monthly\n""1.Birr 35 for 125min\n""2.Birr 50 for 200min\n""3.Birr 95 for 400min/n""5.Back\n""55.Main menu\n"
read r
all2
elif (( $p==4 ))
then
printf "Night\n""1.Birr 3 for 60min\n""2.Birr 6 for 140min\n""5.Back\n""55.Main menu\n"
read r
all2
elif (( $p==5 ))
then
printf ""
else
read p
many2
fi
}

many1 ()
{
if (( $y==1 ))
then
printf "Daily\n""1.Birr 3 for 12min\n""2.Birr 5 for 20min\n""3.Birr 10 for 30min\n""5.Back\n""55.Main menu\n"
read z
all
elif (( $y==2 ))
then
printf "Weekly\n""1.Birr 15 for 70min\n""2.Birr 20 for 100min\n""3.Birr 25 for 130min\n""5.Back\n""55.Main menu\n"
read z
all
elif (( $y==3 ))
then
printf "Monthly\n""1.Birr 35 for 125min\n""2.Birr 50 for 200min\n""3.Birr 95 for 400min\n""5.Back\n""55.Main menu\n"
read z
all
elif (( $y==4 ))
then
printf "Night\n""1.Birr 3 for 60min\n""2.Birr 6 for 140min\n""5.Back\n""55.Main menu\n"
read z
all
elif (( $y==5 ))
then
printf ""
else
read y
many1
fi
}

cho ()
{
if (( $x==1 ))
then
printf "Voice package\n""1.Daily\n""2.weekly\n""3.Monthly\n""4.Night\n""5.Back\n"
read y
many1 
elif (( $x==2 ))
then
printf "Voice package\n""1.Daily\n""2.weekly\n""3.Monthly\n""4.Night\n""5.Back\n"
read p
many2 
else
read x
cho
fi
}

while :
do
echo "Welcome to Ethio Gebeta Voice Packages:"
echo "1.For yourself"
echo "2.For gift"
read x
cho $x 
done
