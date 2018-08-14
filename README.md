# hofs-churn
Approximate code churn as described by Brikman's article https://www.ybrikman.com/writing/2018/08/12/the-10-to-1-rule-of-writing-and-programming/

`hofs-churn` does not calculate code churn *exactly* as in the article. While the methods are the same, small variations may exist (for example, `hofs-churn` calculates jQuery's ratio as 13.82 while the article shows it is 15.)

## Requirements

cloc (apt-get install cloc)

git (apt-get install git)


## How to use

- create a file called `git_repos.txt`, with lines with the Github repos that will be analyzed. For example, `Decagon/hofs-churn`.
- run the following script (which will download the repo from Github.com, calculate stats, then delete it.)

```
while read line; do
git clone https://github.com/$line.git github_repo;
bash ./hofs-churn github_repo "$line";
rm -rf github_repo;
done < git_repos.txt > results.txt
```

If you want to run it on a local repo, or just a single already downloaded but cloned repo, run `bash ./hofs-churn path-to-git-repo github-repo-name;`

The results will be in `results.txt.`



## FAQ

### Cloc says something about recursive regex being exceeded

This does not appear to change the total lines counted, so the error should be ignored.

### Git gets stuck trying to compute the renames but then aborts as it's over a pre-determined limit

Run `git config --global merge.renameLimit 999999` and `git config --global diff.renameLimit 999999` (run at your own risk!)  This will greatly increase processing time for larger repos. https://stackoverflow.com/questions/7830728/

### Git asks for my username and password when cloning a bunch of repos; how do I stop it from asking me?

You can run `hofs-churn` with the `timeout` command (get it from apt-get install `timeout`.) For example, `timeout 1m bash ./hofs-churn` to make `hofs-churn` stop after maximum of one minute, irregardless if it's stuck or not.

## Git says there's an error when cloning a file

It appears to be something with unicode. It appears to be with `.xcodeproj` files and other non-important files, but otherwise the rest of the clone should complete ok.

## Git repos containing a single file have their ratio incorrectly counted

There's an option to `cloc` which outputs the sum irregardless of how many files were counted. I'll have to add it in at some point.

## Whoa, I've cloned a massive repo and I'm out of space. How do I avoid large repos?

Run the script with the `timeout` command so that when Git gets stuck on the `no space left on device` error, `timeout` will kill git, then the `rm -rf github_repo` will complete, freeing up space for the next loop (ugly hack.) Try using `cgroups` perhaps. Try cloning one branch (the main branch) instead of all of them (haven't tried this yet.) I'm not sure how that would change the ratio, though, as I'm not sure if git log tracks branches.
