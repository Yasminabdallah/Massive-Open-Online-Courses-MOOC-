from random import randrange


x=1
randomno=randrange(1, 100, 1)
print randomno
lst =[]
var =1000
# counter=0
# count=0
# cnt=1
print " WELCOME "
file=open("game","r")
content=file.read()
lisst=content.split(" ")

counter=int(lisst[2])
cnt=int(lisst[6])+1
count=int(lisst[10])
file.close()
print content

while x:
	userinput=input("Enter a guessing from 1 to 100\n")
	if (userinput not in lst):
		lst.append(userinput)
		if userinput>0 and userinput<100:
			if userinput==randomno: 
				print "You won!"
				counter+=1
				inp=raw_input("Do you want to play again y/n?\n")

				if inp=='y':
					lst=[]
					
					cnt+=1
					randomno=randrange(1, 100, 1)
					print randomno

				else:
					file=open("game","w")
					file.write("You won "+str(counter)+" times ")
					file.write("You played "+str(cnt)+" times ")
					file.write("You lost "+str(count)+" times ")
					file.close()	

					break;
				
			else:
				if randomno>userinput:
					print "the number is bigger than ",userinput
				else:
					print "the number is smaller than ",userinput
			x+=1
			if x==11:
				print "You Lost"
				count+=1
				inp=raw_input("Do you want to play again y/n?\n");
				if inp=='y':
					cnt+=1
					
					x=1
					lst=[]
				else:
					file=open("game","w")
					file.write("You lost "+str(count)+" times ")
					file.write("You played "+str(cnt)+" times ")
					file.write("You won "+str(counter)+" times ")	
					file.close()	


					break;

		else:
			print "the number must be within range enter again"

	else:
		print "Dont type the same number you have chosen before"
		if var==userinput:
			print "You lost"
			break;
		var=userinput


			