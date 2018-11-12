#!/usr/bin/env bash
# Jira aliases
# https://github.com/michaelradionov/aliases

#
# Replace these values below
#
jira_url="https://jira.flagstudio.ru" # no trailing slash
user="user"
user_pass="user_pass"
#
# Replace values above
#

# check if we have jira_url and its not default
# if we haven't then ask and save
# if we have then do nothing

# same with user

# check if we have password in memory
# if we haven't then ask and do not save


# Open Jira issue in browser. Usage `jopen ISSUE-123`
jopen (){ open $jira_url/browse/$1; }

# Inspect issue title in terminal. Usage `jinfo ISSUE-123`
jinfo (){ curl -s -u $user:$user_pass  $jira_url/browse/$1 | grep "<title>" | sed  -E "s/(<title>|<\/title>)//g";}

# Inspect a bunch of issues in browser. Usage `jpublish v1.0..` to get issues from tag v1.0 to HEAD. You can put commit or branch instead of tag.
jpublish () {
  issues=`git log --pretty=format:"%C(yellow)%h %Cred%ad %Cblue%an%C(auto)%d %Creset%s" --date=short --graph $1 | perl -ne '{ /([A-Z]{1,5})-(\d+)/ && print "$1-$2, " }' | sort | uniq |sed 's/.\{2\}$//'`;
  open "$jira_url/issues/?jql=issuekey in ($issues) ";
}

# Get Git log with issue titles. Usage `jlog`. Like git log.
jlog() {
    git log --oneline --color   $1 | \
    while read -r i
		do
			echo $i
		done
    # do
    #   issue_id=`echo "$i" | perl -ne '{ /([A-Z]{1,5})-(\d+)/ && print "$1-$2\n" }'`;
    #   if [ ! -z "$issue_id" ]
    #   then
    #   	issue_title=$(curl -s -u $user:$user_pass  $jira_url/browse/$issue_id | grep "<title>" | sed  -E "s/(<title>|<\/title>)//g");
    #   else
    #   	issue_title='';
    #   fi
    #   echo -e "$i" "${D_VIOL}""$issue_title""${NC}";
    # done
}
