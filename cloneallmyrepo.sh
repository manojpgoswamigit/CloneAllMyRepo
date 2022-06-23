#clone all repos
# step 1 - generating token
# On GitHub, go to Settings > Developer settings > Personal access tokens
# Click Generate new token

#2 using token in command
# paste this token in the command below in place of "_mytoken_"

# Give it a description and make sure to check the box next to "repo" (it will auto-check all sub-categories under repo, this is fine)
# Click Save and copy the token string on the next page, this is the only time you'll see it and should be treated like a password or private key (you can always delete the token and generate a new one if you lose this)

#step 3 Bash Script Execution
# to run the bash in terminal type the following command >> sh cloneallmyrepo.sh
# or >> ./cloneallmyrepo.sh

for i in `curl -H "Authorization: _mytoken_ https://api.github.com/user/repos?per_page=100 | grep ssh_url | cut -d ':' -f 2-3|tr -d '",'`; do git clone $i; done