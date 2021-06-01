from pyswip import Prolog
from pyswip import Functor


# Used for Finalchoices
# Used to handle list functions given in prolog clauses for reading
def result_value(val):
    format_output = ""
    if isinstance(val, Functor) and val.arity == 2:
        format_output= "{0}{1}{2}".format(val.args[0], val.name, val.args[1])
    elif isinstance(val, list):
        format_output = "[ " + ", ".join([result_value(j) for j in val]) + " ]"
    else:
        format_output = "{}".format(val)

    return format_output


def result(result):
    r=list(result)
    format_output = ""
    for i in r:
        temp= []
        for j in i:
            temp.append(j + " = " + result_value(i[j]))
        format_output += ", ".join(temp) + " ;\n"
    format_output = format_output[:-3] + " ."

    return format_output


prolog= Prolog()
prolog.consult('Career_system.pl')

name = input('Enter your name : ')
roll_no = input('Enter your roll no :')
Branch = input('Enter your branch(cse/ece/csam/csd/csss) : ')

for i in prolog.query("message(" + Branch + "," + "question," + "M)"):
	print(i["M"])

research_exp = input('Do you have any research experience :')
btp_ur = input('Have you done any BTP/UR under professor : ')

career_choices=list()

for i in prolog.query("message(" + Branch + "," + "question," + "M)"):
	if(Branch=='cse'):
		print('1. Software Development')
		print("\n")
		print('2. Research(AI/ML)')
		print("\n")
		print('3. Data Science')
		print("\n")
		print('4. Web/Stack/Cloud Development')
		choice1= input('Enter your first choice :')
		if(choice1=='Software Development'):
			career_choices.append('software')
		elif(choice1=='Research(AI/ML)'):
			career_choices.append('research')
		elif(choice1=='Data Science'):
			career_choices.append('data')
		elif(choice1=='Web/Stack/Cloud Development'):
			career_choices.append('web')
		
		choice2= input('Enter your second choice :')
		if(choice2=='Software Development'):
			career_choices.append('software')
		elif(choice2=='Research(AI/ML)'):
			career_choices.append('research')
		elif(choice2=='Data Science'):
			career_choices.append('data')
		elif(choice2=='Web/Stack/Cloud Development'):
			career_choices.append('web')
	elif(Branch=='ece'):
		print('1. Hardware Design/Development')
		print("\n")
		print('2. Research(VLSI/SP)')
		print("\n")
		print('3. VLSI or Computer Architecture')
		print("\n")
		print('4. Signal Processing/Wireless Networks')
		choice1= input('Enter your first choice :')
		if(choice1=='Hardware Design/Development'):
			career_choices.append('hardware')
		elif(choice1=='Research(VLSI/SP)'):
			career_choices.append('research')
		elif(choice1=='VLSI or Computer Architecture'):
			career_choices.append('vlsi')
		elif(choice1=='Signal Processing/Wireless Networks'):
			career_choices.append('signal')
		
		choice2= input('Enter your second choice :')
		if(choice2=='Hardware Design/Development'):
			career_choices.append('hardware')
		elif(choice2=='Research(VLSI/SP)'):
			career_choices.append('research')
		elif(choice2=='VLSI or Computer Architecture'):
			career_choices.append('vlsi')
		elif(choice2=='Signal Processing/Wireless Networks'):
			career_choices.append('signal')
	elif(Branch=='csam'):
		print('1. Theoretical Computer Science')
		print("\n")
		print('2. Research(Proof/Optimization problems)')
		print("\n")
		print('3. Mathematician/Statistician')
		print("\n")
		print('4. Mathematical Software Development')
		choice1= input('Enter your first choice :')
		if(choice1=='Theoretical Computer Science'):
			career_choices.append('theory')
		elif(choice1=='Research(Proof/Optimization problems)'):
			career_choices.append('research')
		elif(choice1=='Mathematician/Statistician'):
			career_choices.append('maths')
		elif(choice1=='Mathematical Software Development'):
			career_choices.append('software')

		choice2= input('Enter your second choice :')
		if(choice2=='Theoretical Computer Science'):
			career_choices.append('theory')
		elif(choice2=='Research(Proof/Optimization problems)'):
			career_choices.append('research')
		elif(choice2=='Mathematician/Statistician'):
			career_choices.append('maths')
		elif(choice2=='Mathematical Software Development'):
			career_choices.append('software')
	elif(Branch == 'csd'):
		print('1. UI/UX Design Job')
		print("\n")
		print('2. Research(HCI/HCD)')
		print("\n")
		print('3. Game Developer')
		print("\n")
		print('4. Software Development')
		choice1= input('Enter your first choice :')
		if(choice1=='UI/UX Design Job'):
			career_choices.append('uiux')
		elif(choice1=='Research(HCI/HCD)'):
			career_choices.append('research')
		elif(choice1=='Game Developer'):
			career_choices.append('game')
		elif(choice1=='Software Development'):
			career_choices.append('software')

		choice2= input('Enter your second choice :')
		if(choice2=='UI/UX Design Job'):
			career_choices.append('uiux')
		elif(choice2=='Research(HCI/HCD)'):
			career_choices.append('research')
		elif(choice2=='Game Developer'):
			career_choices.append('game')
		elif(choice2=='Software Development'):
			career_choices.append('software')

	elif(Branch == 'csss'):
		print('1. Social Science and AI')
		print("\n")
		print('2. Research(Economics/Sociology)')
		print("\n")
		print('3. Govt. oriented Job')
		print("\n")
		print('4. Software Development')
		choice1= input('Enter your first choice :')
		if(choice1=='Social Science and AI'):
			career_choices.append('socialai')
		elif(choice1=='Research(Economics/Sociology)'):
			career_choices.append('research')
		elif(choice1=='Govt. oriented Job'):
			career_choices.append('govt')
		elif(choice1=='Software Development'):
			career_choices.append('software')

		choice2= input('Enter your second choice :')
		if(choice2=='Social Science and AI'):
			career_choices.append('socialai')
		elif(choice2=='Research(Economics/Sociology)'):
			career_choices.append('research')
		elif(choice2=='Govt. oriented Job'):
			career_choices.append('govt')
		elif(choice2=='Software Development'):
			career_choices.append('software')




Firstcareer = career_choices[0]
Secondcareer = career_choices[1]

answer= list(prolog.query("listcareerchoices(" + str(career_choices) + "," + Firstcareer + "," + Secondcareer + "," + Branch + "," + research_exp + "," + btp_ur + "," + "Finalchoices)"))
print("The following careers have been predicted in decreasing priority")
print(result(answer))






