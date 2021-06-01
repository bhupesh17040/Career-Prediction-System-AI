

message(Branch,question,M) :- (Branch == 'cse'), M = 'Hi! So you are a CSE Student, please answer the following questions!. '.
message(Branch,question,M) :- (Branch == 'ece'), M='Hi! So you are an ECE Student, please answer the following questions!.'.
message(Branch,question,M) :- (Branch == 'csam'), M='Hi! So you are a CSAM Student, please answer the following questions!'.
message(Branch,question,M) :- (Branch=='csd'), M='Hi! So you are a CSD Student, please answer the following questions!'.
message(Branch,question,M) :- (Branch=='csss'), M='Hi! So you are a CSSS Student, please answer the following questions!'.

verifymarks(Eligiblelist,question,V) :- nth0(0,Eligiblelist,Firstvalue), nth0(1,Eligiblelist,Secondvalue),(Firstvalue >= 7.00 , Secondvalue >= 70) , V='You are eligible!'. /* Use of lists to search*/
verifymarks(Eligiblelist,question,V) :- nth0(0,Eligiblelist,Firstvalue), nth0(1,Eligiblelist,Secondvalue),(Firstvalue < 7.00 , Secondvalue < 70) , V='You are not eligible!'. /* Use of lists to search */
verifymarks(Eligiblelist,question,V) :- nth0(0,Eligiblelist,Firstvalue), nth0(1,Eligiblelist,Secondvalue),(Firstvalue < 7.00 , Secondvalue >= 70) , V='You are not eligible ! Work to improve your CGPA !'. /* Use of lists to search */
verifymarks(Eligiblelist,question,V) :- nth0(0,Eligiblelist,Firstvalue), nth0(1,Eligiblelist,Secondvalue),(Firstvalue >= 7.00 , Secondvalue < 70) , V='You are not eligible ! Work to improve your Placement skills !'. /* Use of lists to search */

/* For CSE */
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='cse'),(Btpur=='yes',Experience=='yes'),append(['Research(AI/ML)'],['Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='cse'),(Btpur=='yes', Experience=='no'), append(['Software Development'],['Research(AI/ML)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='cse'),(Btpur=='no' , Experience=='yes'), append(['Research(AI/ML)'],['Software Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='cse'),(Btpur=='no' , Experience=='no'), append(['Software Development'],['Research(AI/ML)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='data' ; Secondcareer=='data'),(Branch=='cse'),(Btpur=='yes' , Experience=='yes'), append(['Data Science'],['Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='data' ; Secondcareer=='data'),(Branch=='cse'), (Btpur=='yes' , Experience=='no'), append(['Software Development'],['Data Science'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='data' ; Secondcareer=='data'),(Branch=='cse'),(Btpur=='no' , Experience=='yes'), append(['Data Science'],['Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='data' ; Secondcareer=='data'),(Branch=='cse'), (Btpur=='no' , Experience=='no'), append(['Software Development'],['Data Science'], Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'), (Btpur=='yes' , Experience=='yes'), append(['Software Development'] , ['Web/Stack/Cloud Development'], Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'), (Btpur=='yes' , Experience=='no'), append(['Software Development'], ['Web/Stack/Cloud Development'], Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'), (Btpur=='no' , Experience=='yes'), append(['Software Development'],['Web/Stack/Cloud Development'], Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='software' ; Secondcareer=='software' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'), (Btpur=='no' , Experience=='no'), append(['Web/Stack/Cloud Development'],['Software Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='data' ; Secondcareer=='data'),(Branch=='cse'), (Btpur=='yes' , Experience=='yes'), append(['Research(AI/ML)'],['Data Science'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='data' ; Secondcareer=='data'),(Branch=='cse'), (Btpur=='yes' , Experience=='no'), append(['Data Science'],['Research(AI/ML)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='data' ; Secondcareer=='data'),(Branch=='cse'),(Btpur=='no' , Experience=='yes'), append(['Research(AI/ML)'],['Data Science'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='data' ; Secondcareer=='data'),(Branch=='cse'),(Btpur=='no' , Experience=='no'), append(['Data Science'],['Research'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'), (Btpur=='yes' , Experience=='yes'), append(['Research(AI/ML)'],['Web/Stack/Cloud Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'), (Btpur=='yes' , Experience=='no'), append(['Research(AI/ML)'],['Web/Stack/Cloud Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'), (Btpur=='no' , Experience=='yes'), append(['Research(AI/ML)'],['Web/Stack/Cloud Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'), (Btpur=='no' , Experience=='no'), append(['Web/Stack/Cloud Development'],['Research(AI/ML)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='data' ; Secondcareer=='data' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'),(Btpur=='yes' , Experience=='yes'), append(['Data Science'],['Web/Stack/Cloud Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='data' ; Secondcareer=='data' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'),(Btpur=='yes' , Experience=='no'), append(['Web/Stack/Cloud Development'],['Data Science'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='data' ; Secondcareer=='data' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'),(Btpur=='no' , Experience=='yes'), append(['Data Science'],['Web/Stack/Cloud Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='data' ; Secondcareer=='data' ),(Firstcareer=='web' ; Secondcareer=='web'),(Branch=='cse'),(Btpur=='no' , Experience=='no'), append(['Web/Stack/Cloud Development'],['Data Science'],Finalchoices)  .


/* For ECE */
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='ece'),(Btpur=='yes',Experience=='yes'),append(['Research(VLSI/SP)'],['Hardware Design/Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='ece'),(Btpur=='yes', Experience=='no'), append(['Hardware Design/Development'],['Research(VLSI/SP)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='ece'),(Btpur=='no' , Experience=='yes'), append(['Research(VLSI/SP)'],['Hardware Design/Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='ece'),(Btpur=='no' , Experience=='no'), append(['Hardware Design/Development'],['Research(VLSI/SP)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='vlsi' ; Secondcareer=='vlsi'),(Branch=='ece'),(Btpur=='yes' , Experience=='yes'),append(['VLSI or Computer Architecture'],['Hardware Design/Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='vlsi' ; Secondcareer=='vlsi'),(Branch=='ece'), (Btpur=='yes' , Experience=='no'), append(['Hardware Design/Development'],['VLSI or Computer Architecture'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='vlsi' ; Secondcareer=='vlsi'),(Branch=='ece'), (Btpur=='no' , Experience=='yes'), append(['VLSI or Computer Architecture'],['Hardware Design/Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='vlsi' ; Secondcareer=='vlsi'),(Branch=='ece'), (Btpur=='no' , Experience=='no'),append(['Hardware Design/Development'],['VLSI or Computer Architecture'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'), (Btpur=='yes' , Experience=='yes'), append(['Signal Processing/Wireless Networks'],['Hardware Design/Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'), (Btpur=='yes' , Experience=='no'), append(['Signal Processing/Wireless Networks'],['Hardware Design/Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'), (Btpur=='no' , Experience=='yes'), append(['Hardware Design/Development'],['Signal Processing/Wireless Networks'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='hardware' ; Secondcareer=='hardware' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'), (Btpur=='no' , Experience=='no'),append(['Hardware Design/Development'],['Signal Processing/Wireless Networks'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='vlsi' ; Secondcareer=='vlsi'),(Branch=='ece'), (Btpur=='yes' , Experience=='yes'),append(['Research(VLSI/SP)'],['VLSI or Computer Architecture'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='vlsi' ; Secondcareer=='vlsi'),(Branch=='ece'), (Btpur=='yes' , Experience=='no'), append(['VLSI or Computer Architecture'],['Research(VLSI/SP)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='vlsi' ; Secondcareer=='vlsi'),(Branch=='ece'),(Btpur=='no' , Experience=='yes'), append(['Research(VLSI/SP)'],['VLSI or Computer Architecture'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='vlsi' ; Secondcareer=='vlsi'),(Branch=='ece'),(Btpur=='no' , Experience=='no'), append(['VLSI or Computer Architecture'],['Research(VLSI/SP)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'), (Btpur=='yes' , Experience=='yes'),append(['Research(VLSI/SP)'],['Signal Processing/Wireless Networks'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='signal' ; Secondcareer=='signal'), (Branch=='ece'),(Btpur=='yes' , Experience=='no'),append(['Signal Processing/Wireless Networks'],['Research(VLSI/SP)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='signal' ; Secondcareer=='signal'), (Branch=='ece'),(Btpur=='no' , Experience=='yes'),append(['Research(VLSI/SP)'],['Signal Processing/Wireless Networks'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'), (Btpur=='no' , Experience=='no'), append(['Signal Processing/Wireless Networks'],['Research(VLSI/SP)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='vlsi' ; Secondcareer=='vlsi' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'),(Btpur=='yes' , Experience=='yes'),append(['VLSI or Computer Architecture'],['Signal Processing/Wireless Networks'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='vlsi' ; Secondcareer=='vlsi' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'),(Btpur=='yes' , Experience=='no'),append(['VLSI or Computer Architecture'],['Signal Processing/Wireless Networks'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='vlsi' ; Secondcareer=='vlsi' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'),(Btpur=='no' , Experience=='yes'),append(['Signal Processing/Wireless Networks'],['VLSI or Computer Architecture'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='vlsi' ; Secondcareer=='vlsi' ),(Firstcareer=='signal' ; Secondcareer=='signal'),(Branch=='ece'),(Btpur=='no' , Experience=='no'),append(['Signal Processing/Wireless Networks'],['VLSI or Computer Architecture'],Finalchoices) .


/* For CSAM */
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csam'),(Btpur=='yes',Experience=='yes'),append(['Research(Proof/Optimization problems)'],['Theoretical Computer Science'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csam'),(Btpur=='yes', Experience=='no'), append(['Theoretical Computer Science'],['Research(Proof/Optimization problems)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csam'),(Btpur=='no' , Experience=='yes'), append(['Theoretical Computer Science'],['Research(Proof/Optimization problems)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csam'),(Btpur=='no' , Experience=='no'), append(['Theoretical Computer Science'],['Research(Proof/Optimization problems)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='maths' ; Secondcareer=='maths'),(Branch=='csam'),(Btpur=='yes' , Experience=='yes'), append(['Research(Proof/Optimization problems)'],['Mathematician/Statistician'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='maths' ; Secondcareer=='maths'),(Branch=='csam'), (Btpur=='yes' , Experience=='no'), append(['Mathematician/Statistician'],['Research(Proof/Optimization problems)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='maths' ; Secondcareer=='maths'),(Branch=='csam'), (Btpur=='no' , Experience=='yes'), append(['Mathematician/Statistician'],['Research(Proof/Optimization problems)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='maths' ; Secondcareer=='maths'),(Branch=='csam'), (Btpur=='no' , Experience=='no'), append(['Research(Proof/Optimization problems)'],['Mathematician/Statistician'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csam'), (Btpur=='yes' , Experience=='yes'), append(['Theoretical Computer Science'],['Mathematical Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csam'), (Btpur=='yes' , Experience=='no'), append(['Mathematical Software Development'],['Theoretical Computer Science'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csam'),(Btpur=='no' , Experience=='yes'), append(['Theoretical Computer Science'],['Mathematical Software Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='theory' ; Secondcareer=='theory' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csam'), (Btpur=='no' , Experience=='no'), append(['Theoretical Computer Science'],['Mathematical Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='maths' ; Secondcareer=='maths'), (Branch=='csam'),(Btpur=='yes' , Experience=='yes'), append(['Research(Proof/Optimization problems)'],['Mathematician/Statistician'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='maths' ; Secondcareer=='maths'), (Branch=='csam'),(Btpur=='yes' , Experience=='no'), append(['Research(Proof/Optimization problems)'],['Mathematician/Statistician'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='maths' ; Secondcareer=='maths'),(Branch=='csam'),(Btpur=='no' , Experience=='yes'), append(['Research(Proof/Optimization problems)'],['Mathematician/Statistician'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='maths' ; Secondcareer=='maths'),(Branch=='csam'),(Btpur=='no' , Experience=='no'), append(['Research(Proof/Optimization problems)'],['Mathematician/Statistician'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csam'),(Btpur=='yes' , Experience=='yes'), append(['Research(Proof/Optimization problems)'],['Mathematical Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csam'),(Btpur=='yes' , Experience=='no'), append(['Mathematical Software Development'],['Research(Proof/Optimization problems)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csam'),(Btpur=='no' , Experience=='yes'), append(['Mathematical Software Development'],['Research(Proof/Optimization problems)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csam'),(Btpur=='no' , Experience=='no'), append(['Research(Proof/Optimization problems)'],['Mathematical Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='maths' ; Secondcareer=='maths' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csam'),(Btpur=='yes' , Experience=='yes'), append(['Mathematician/Statistician'],['Mathematical Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='maths' ; Secondcareer=='maths' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csam'),(Btpur=='yes' , Experience=='no'), append(['Mathematical Software Development'],['Mathematician/Statistician'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='maths' ; Secondcareer=='maths' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csam'),(Btpur=='no' , Experience=='yes'), append(['Mathematician/Statistician'],['Mathematical Software Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='maths' ; Secondcareer=='maths' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csam'),(Btpur=='no' , Experience=='no'), append(['Mathematical Software Development'],['Mathematician/Statistician'],Finalchoices).

/* For CSD */
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csd'),(Btpur=='yes',Experience=='yes'),append(['Research(HCI/HCD)'],['UI/UX Design Job'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csd'),(Btpur=='yes', Experience=='no'), append(['UI/UX Design Job'],['Research(HCI/HCD)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csd'),(Btpur=='no' , Experience=='yes'), append(['UI/UX Design Job'],['Research(HCI/HCD)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csd'),(Btpur=='no' , Experience=='no'), append(['UI/UX Design Job'],['Research(HCI/HCD)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='game' ; Secondcareer=='game'),(Branch=='csd'),(Btpur=='yes' , Experience=='yes'), append(['UI/UX Design Job'],['Game Developer'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='game' ; Secondcareer=='game'),(Branch=='csd'), (Btpur=='yes' , Experience=='no'), append(['UI/UX Design Job'],['Game Developer'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='game' ; Secondcareer=='game'),(Branch=='csd'), (Btpur=='no' , Experience=='yes'), append(['UI/UX Design Job'],['Game Developer'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='game' ; Secondcareer=='game'),(Branch=='csd'), (Btpur=='no' , Experience=='no'), append(['Game Developer'],['UI/UX Design Job'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'), (Btpur=='yes' , Experience=='yes') , append(['Software Development'],['UI/UX Design Job'],Finalchoices)  .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'), (Btpur=='yes' , Experience=='no'), append(['UI/UX Design Job'],['Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'), (Btpur=='no' , Experience=='yes'), append(['Software Development'],['UI/UX Design Job'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='uiux' ; Secondcareer=='uiux' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csd'),(Btpur=='no' , Experience=='no'), append(['UI/UX Design Job'],['Software Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='game' ; Secondcareer=='game'), (Branch=='csd'),(Btpur=='yes' , Experience=='yes'),append(['Research(HCI/HCD)'],['Game Developer'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='game' ; Secondcareer=='game'), (Branch=='csd'),(Btpur=='yes' , Experience=='no'),append(['Research(HCI/HCD)'],['Game Developer'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='game' ; Secondcareer=='game'),(Branch=='csd'),(Btpur=='no' , Experience=='yes'), append(['Game Developer'],['Research(HCI/HCD)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='game' ; Secondcareer=='game'),(Branch=='csd'),(Btpur=='no' , Experience=='no'), append(['Game Developer'],['Research(HCI/HCD)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csd'),(Btpur=='yes' , Experience=='yes'),append(['Research(HCI/HCD)'],['Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'), (Btpur=='yes' , Experience=='no'), append(['Software Development'],['Research(HCI/HCD)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'), (Btpur=='no' , Experience=='yes'), append(['Research(HCI/HCD)'],['Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'), (Btpur=='no' , Experience=='no'), append(['Software Development'],['Research(HCI/HCD)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='game' ; Secondcareer=='game' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'),(Btpur=='yes' , Experience=='yes'),append(['Software Development'],['Game Developer'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='game' ; Secondcareer=='game' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'),(Btpur=='yes' , Experience=='no'),append(['Software Development'],['Game Developer'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='game' ; Secondcareer=='game' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'),(Btpur=='no' , Experience=='yes'),append(['Software Development'],['Game Developer'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='game' ; Secondcareer=='game' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csd'),(Btpur=='no' , Experience=='no'), append(['Game Developer'],['Software Development'],Finalchoices).


/* For CSSS */
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csss'),(Btpur=='yes',Experience=='yes'),append(['Research(Economics/Sociology)'],['Social Science and AI'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csss'),(Btpur=='yes', Experience=='no'), append(['Social Science and AI'],['Research(Economics/Sociology)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csss'),(Btpur=='no' , Experience=='yes'), append(['Research(Economics/Sociology)'],['Social Science and AI'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='research' ; Secondcareer=='research'),(Branch=='csss'),(Btpur=='no' , Experience=='no'), append(['Social Science and AI'],['Research(Economics/Sociology)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='govt' ; Secondcareer=='govt'),(Branch=='csss'),(Btpur=='yes' , Experience=='yes'), append(['Social Science and AI'],['Govt. oriented Job'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='govt' ; Secondcareer=='govt'),(Branch=='csss'), (Btpur=='yes' , Experience=='no'), append(['Social Science and AI'],['Govt. oriented Job'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='govt' ; Secondcareer=='govt'),(Branch=='csss'), (Btpur=='no' , Experience=='yes'), append(['Govt. oriented Job'],['Social Science and AI'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='govt' ; Secondcareer=='govt'), (Branch=='csss'),(Btpur=='no' , Experience=='no'), append(['Govt. oriented Job'],['Social Science and AI'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csss'), (Btpur=='yes' , Experience=='yes'), append(['Social Science and AI'],['Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csss'),(Btpur=='yes' , Experience=='no'), append(['Social Science and AI'],['Software Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csss'),(Btpur=='no' , Experience=='yes'), append(['Software Development'],['Social Science and AI'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='socialai' ; Secondcareer=='socialai' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csss'), (Btpur=='no' , Experience=='no'), append(['Software Development'],['Social Science and AI'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='govt' ; Secondcareer=='govt'),(Branch=='csss'), (Btpur=='yes' , Experience=='yes'),append(['Research(Economics/Sociology)'],['Govt. oriented Job'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='govt' ; Secondcareer=='govt'), (Branch=='csss'),(Btpur=='yes' , Experience=='no'),append(['Govt. oriented Job'],['Research(Economics/Sociology)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='govt' ; Secondcareer=='govt'),(Branch=='csss'),(Btpur=='no' , Experience=='yes'), append(['Research(Economics/Sociology)'],['Govt. oriented Job'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='govt' ; Secondcareer=='govt'),(Branch=='csss'),(Btpur=='no' , Experience=='no'), append(['Govt. oriented Job'],['Research(Economics/Sociology)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csss'), (Btpur=='yes' , Experience=='yes'),append(['Research(Economics/Sociology)'],['Software Development'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csss'), (Btpur=='yes' , Experience=='no'), append(['Software Development'],['Research(Economics/Sociology)'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csss'), (Btpur=='no' , Experience=='yes'), append(['Software Development'],['Research(Economics/Sociology)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='research' ; Secondcareer=='research' ),(Firstcareer=='software' ; Secondcareer=='software'), (Branch=='csss'),(Btpur=='no' , Experience=='no'), append(['Software Development'],['Research(Economics/Sociology)'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='govt' ; Secondcareer=='govt' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csss'),(Btpur=='yes' , Experience=='yes'), append(['Software Development'],['Govt. oriented Job'],Finalchoices) .
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='govt' ; Secondcareer=='govt' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csss'),(Btpur=='yes' , Experience=='no'), append(['Software Development'],['Govt. oriented Job'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='govt' ; Secondcareer=='govt' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csss'),(Btpur=='no' , Experience=='yes'),append(['Govt. oriented Job'],['Software Development'],Finalchoices).
listcareerchoices(Userchoices,Firstcareer,Secondcareer,Branch,Experience,Btpur,Finalchoices) :- nth0(0,Userchoices,Firstcareer), nth0(1,Userchoices,Secondcareer) , (Firstcareer=='govt' ; Secondcareer=='govt' ),(Firstcareer=='software' ; Secondcareer=='software'),(Branch=='csss'),(Btpur=='no' , Experience=='no'), append(['Govt. oriented Job'],['Software Development'],Finalchoices).




ask_questions(question) :-	
    write('CSE 643 ARTIFICIAL INTELLIGENCE'),nl,
    write('Career Prediction System for B.Tech Students'),nl,
    write(' What is your name ? '),
    read(Name),nl,
    write(' What is your Roll no.? '),
    read(Rollno),nl,
    write('What is your CGPA'),
    read(CGPA),nl,
    write('Enter your marks in Pre-placement test(100)'),
    read(Marksplacement),nl,
    append([CGPA],[Marksplacement],Eligiblelist),nl, /** Using this list to search and sort */
    write('What is your Branch ? '),nl,
    write('1. CSE'),nl,
    write('2. ECE'),nl,
    write('3. CSAM'),nl,
    write('4. CSD'),nl,
    write('5. CSSS'),nl,
    read(Branch),nl,
    message(Branch,question,M),nl,
    write(M),nl,nl,
    write('Do you have any research experience/internship'),nl,
    write('1. yes'),nl,
    write('2. no'),nl,
    read(Experience),nl,
    write('Have you done any BTP/IP/UR under professor'),nl,
    write('1. yes'),nl,
    write('2. no'),nl,
    read(Btpur),nl,         /* Looping over branches */
    ( Branch == 'cse' ->
		 write('Enter your first choice/interest !'),nl,
		 write('1. Software Development '),nl,
		 write('2. Research( AI/ML) '),nl,
		 write('3. Data Science '),nl,
		 write('4. Web/Stack/Cloud Development '),nl,
                 read(Choice1),nl,
		 write('Enter your second choice/interest !'),nl,
		 write('1. Software Development '),nl,
		 write('2. Research( AI/ML) '),nl,
		 write('3. Data Science '),nl,
		 write('4. Web/Stack/Cloud Development '),nl,
                 read(Choice2),nl
		 ;
    ( Branch == 'ece' ->
		 write('Enter your first choice/interest !'),nl,
		 write('1. Hardware Design/Development '),nl,
		 write('2. Research(VLSI/SP) '),nl,
		 write('3. VLSI or Computer Architecture '),nl,
		 write('4. Signal Processing/Wireless Networks '),nl,
                 read(Choice1),nl,
		 write('Enter your second choice/interest !'),nl,
		 write('1. Hardware Design/Development '),nl,
		 write('2. Research(VLSI/SP) '),nl,
		 write('3. VLSI or Computer Architecture '),nl,
		 write('4. Signal Processing/Wireless Networks '),nl,
                 read(Choice2),nl
		 ;
      ( Branch == 'csam' ->
		 write('Enter your first choice/interest !'),nl,
		 write('1. Theoretical Computer Science '),nl,
		 write('2. Research(Proof/Optimization problems) '),nl,
		 write('3. Mathematician/Statistician '),nl,
		 write('4. Mathematical Software Development '),nl,
                 read(Choice1),nl,
		 write('Enter your second choice/interest !'),nl,
		 write('1. Theoretical Computer Science '),nl,
		 write('2. Research(Proof/Optimization problems)'),nl,
		 write('3. Mathematician/Statistician '),nl,
		 write('4. Mathematical Software Development '),nl,
                 read(Choice2),nl
		 ;
      ( Branch == 'csd' ->
		 write('Enter your first choice/interest !'),nl,
		 write('1. UI/UX Design Job '),nl,
		 write('2. Research(HCI/HCD) '),nl,
		 write('3. Game Developer '),nl,
		 write('4. Software Development '),nl,
                 read(Choice1),nl,
		 write('Enter your second choice/interest !'),nl,
		 write('1. UI/UX Design Job '),nl,
		 write('2. Research(HCI/HCD)'),nl,
		 write('3. Game Developer '),nl,
		 write('4. Software Development '),nl,
                 read(Choice2),nl
		 ;
     ( Branch == 'csss' ->
		 write('Enter your first choice/interest !'),nl,
		 write('1. Social Science and AI '),nl,
		 write('2. Research(Economics/Sociology) '),nl,
		 write('3. Govt. oriented Job'),nl,
		 write('4. Software Development '),nl,
                 read(Choice1),nl,
		 write('Enter your second choice/interest !'),nl,
		 write('1. Social Science and AI '),nl,
		 write('2. Research(Economics/Sociology)'),nl,
		 write('3. Govt. oriented Job '),nl,
		 write('4. Software Development '),nl,
                 read(Choice2),nl
		))))),
     
    verifymarks(Eligiblelist,question,V),nl,  /* This is used to check eligibility */
    append([Choice1],[Choice2],Userchoices),nl,
    listcareerchoices(Userchoices,Experience,Btpur,Finalchoices),nl,  
    (V == 'You are eligible!'->
	   write(' Career Prediction System has given the following results:'),nl,
           write(' Name : '),write(Name),nl,
           write(' Roll no. : '),write(Rollno),nl,
           write(' Based on your CGPA,Marks in placement,BTP/UR/IP, Experience and choices '),nl,
           write(' The following careers have been predicted in decreasing priority'),nl,
           write(Finalchoices)
	   ;
     ( V == 'You are not eligible!' ; V == 'You are not eligible ! Work to improve your CGPA !' ; V == 'You are not eligible ! Work to improve your Placement skills !' ->
	   write(' Career Prediction System has given the following results:'),nl,
           write(' Name : '),write(Name),nl,
           write(' Roll no. : '),write(Rollno),nl,
           write(' Based on your CGPA,Marks in placement,BTP/UR/IP, Experience and choices '),nl,
	   write(V),nl
         )).
    
		  
		
       
		
		  
		  
		 
             
		  

	
		 
		 
    
     
    
   

    
		      
    