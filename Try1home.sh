#! /bin/bash



function find_name(arg1){
   res=arg1
   flag=""
   for(i=0;i<length(arg1);i++)
   {
      if(flag=="true")
      {
      gsub(substr(arg1,i,1),toupper(substr(arg1,i,1)),res)
      flag=""
      continue
      }

      if(substr(arg1,i,1)==" ")
      {
      flag="true"
      }

      if(i==0)
      {
      gsub( substr(arg1,0,1),toupper(substr(arg1,0,1)) , res)
      continue
      }
      
   }
   return res
}

function ElEma(arg1)
{
	res=tolower(arg1)
	for(i=0;i<length(arg1);i++)
	{
	if(substr(arg1,i,1)==" ")
        {
	gsub(substr(res,2),substr(res,i+1),res)
	break
	}

	}

return res
}
function GetMail(arg1)
{
login=ElEma(arg1)
countsame=1

	for(i in arra)
	{
		if(arra[i]==login)
		{
			if(substr(login,length(login),1)=="1"||substr(login,length(login),1)=="2"||substr(login,length(login),1)=="3"||substr(login,length(login),1)=="4"||substr(login,length(login),1)=="5"||substr(login,length(login),1)=="6"||substr(login,length(login),1)=="7"||substr(login,length(login),1)=="8"||substr(login,length(login),1)=="9")
			{
			gsub(substr(login,length(login),1),"",login)
			}
		login=login countsame
		countsame++
		}
	}
arra[ccount]=login
ccount++
return login"@abc.com"
}
BEGIN {
arra[0]="ss"
ccount=0
FS=","
OFS=","

}
{
print $1,$2,$3,$4,find_name($5), $6,GetMail($5),$8

}
