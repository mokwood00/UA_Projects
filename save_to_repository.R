#go to tools, global, GIT/SVN make sure for mac that under version control, enable version control interface for Rstudio projects is checked.

#go to your mac machine terminal (to get here go to applications, utilities) and type "git--version". If installed, you will see version number, otherwise you get an error (we did not have an error so idk how to fix)

#go to Rstudio and install
install.packages("usethis")

#type the following and run 
Sys.which("git")

#if you have not created a github account, you have to do this first because you need your username and the associated email for your github account for steps below.
usethis::use_git_config(user.name = "mokwood00", user.email = "moriahwood2000@gmail.com")

#this will open github in chrome and you can create a token. I selected write packages, but kept everything else the same. Copy this token and keep browser open!
usethis::create_github_token()

#for this, it will ask you to copy the token
gitcreds::gitcreds_set()

#test that it is linked using this
usethis::gh_token_help()

#this links to github
usethis::use_git()
usethis::use_github()

#if you get there error it is because you need to create a project: 
#Error in `proj_set()`:
# ✖ Path /Users/moriah.wood/Desktop/ does not appear to be inside a project or package.
# ℹ Read more in the help for `usethis::proj_get()`.

#to create a project in Rstudio, go to file, new project, new directory, and then new project again. Select a directory and name and hit create project. If it does not create a project, you can go to upper right and hit project dropdown menu to alternatively create a project. 

#Git should appear as a tab in the upper right window along with environment, history, connections, tutorial. Click on this, this is where files with unsaved changes will appear. To commit these changes to github, click the file with changes you want to save and hit commit. You can comment on the changes made to this version of the file. If the commit for the file does not appear in the Github account (check in your browser under repositories), click push and check again. Also can make a new file and save to same repository. 

#commit and push are separate steps. Hit both for each time you want to upload to the cloud! Push sends changes to the cloud.

