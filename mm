4:vagrant.exe ssh Centos7          [same as   config.vm.define :Centos7]
5:vagrant.exe ssh Ubuntus16        [same as   config.vm.define :Ubuntus16 ]
7:the from suppose Ubuntus16 machine in .ssh folder 
10:ssh-keygen -t rsa -b 4096 
12:then from different powershell login to Centos7 Machine and do 
13:sudo su - to get the root user .
16:What happends exactly when you do 
20:1. ssh key is generated for windows 
25:LOgin to different machine from Ubuntu Jump HOst 
29:ssh -i /home/vagrant/id_rsa vagrant@192.168.50.51
33:ssh vagrant@192.168.50.50
35:Inorder to do ssh machine_name  then you have to perform below steps
39:suppose you want to ping to the machine 
42:then if you have not configured the IP address in /etc/hosts file then you will get 127.0.0.1 
43:so once you have configured then instead of 127.0.0. you will get 192.168.50.50 
44:MOreover if you configure the same settings inthe same Ubuntu machine for centos then 
45:you can ping the centos from the ubuntu and get to see the IPs .
53:cat <some_filename> | sed 's/^/ <some_new_value_that_is_gonna_inserted_at_the_begining> /g'
54:cat <some_filename> | sed 's/$/ <some_new_value_that_is_gonna_inserted_at_the_end> /g'
65:sed ' 0-3p '  => starting from 0 aand every third line will be deleted 
66:sed -r 's/firewall/\U&/ig'
87:tar -v   => to see the details
88:tar -t   => to see the content 
95:crontab -l  => its a daemon runing in all the linux machines
99:to see the cron job logs -> /var/log/syslog 
110: rsync -avz /root/source/testzip/* /root/backup/ubuntu/  -> compress
111: serivce --status-all 
129:To check all the remote branches 
133:Read this before starting any checkout locally from remote
136:https://stackoverflow.com/questions/10002239/difference-between-git-checkout-track-origin-branch-and-git-checkout-b-branch/10002469#10002469
140:What is the difference between 
148:The two commands have the same effect (thanks to Robert Siemerâ€™s answer for pointing it out).
150:The practical difference comes when using a local branch named differently:
152:git checkout -b mybranch origin/abranch will create mybranch and track origin/abranch
153:git checkout --track origin/abranch will only create 'abranch', not a branch with a different name.
154:(That is, as commented by Sebastian Graf, if the local branch did not exist already.
155:If it did, you would need git checkout -B abranch origin/abranch)
162:git checkout -b branch origin/branch will:=> create/reset branch to the point referenced by origin/branch.  
165:Suppose you have created some files that are locally committed not pushed then once you fire 
168:then all the local changes will be lost and it will be synced to the remote branch .
172: > git log => to check the all the commits with the most recent commit at the top
174: > git log -p => to see the changes that actually happened at each commit 
180: Now suppose you have 
181: one.txt and it is been added to staged area 
183: git add .
188: git diff => gives the difference between working area and staging area 
190: git diff --staged  => difference between last commit and staged area
192: git reset HEAD                                               => moves your pointer to last committed point of your local git branch .
194: git log --oneline --graph --decorate --all                   => for graphical view 
196: git branch -m <new branch name >                             => rename the current branch 
198: git branch -m <old branch name > <new branch name >          => changing the different branch name to new name 
200: git remote show origin										  => tells you which local branch is associated with which upstream i.e. remote branch
202: git branch -av                                               => tells you what local branches and remote branches are & with the commit they are at . 
204: git branch -vv                                               => tells you what local branches you have and which commit they are at
207:                                                                 Suppose your localslave is tracked with origin/slave 
208:																 then you added one file at origin/slave 
210:																 git by defualt doesnt know that remote branch is ahead by one commit 
213:																 git fetch origin then do git status , you will see that git says 
214:																 remote branch is ahead by local by one commit .
218: git pull   =  git fetch origin + git merge origin/slave [in this case origin/case ] 
236:Scenarion : -  Suppose after clonning from Github ,you are not able to push the changes to master 
242:Had AnekYoutube [local branch ] not existed then we would have executed below command
