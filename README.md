# hofs-churn
Approximate code churn as described by Brikman's article https://www.ybrikman.com/writing/2018/08/12/the-10-to-1-rule-of-writing-and-programming/

`hofs-churn` does not calculate code churn *exactly* as in the article. While the methods are the same, small variations may exist (for example, `hofs-churn` calculates jQuery's ratio as 13.82 while the article shows it is 15.)

## Requirements

Want to get started faster? Just run `sudo bash setup.sh` to install all of these requirements.

tokei
* `wget -O - https://github.com/Aaronepower/tokei/releases/download/v7.0.3/tokei-v7.0.3-x86_64-unknown-linux-gnu.tar.gz | gunzip -c | tar xvf - > /tmp/tokei`
* `chmod a+x /tmp/tokei`
* `mv /tmp/tokei /usr/bin/`

git
* `apt-get install git`

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

```
43.09:FreeCodeCamp/FreeCodeCamp
4.50:firehol/netdata
6.19:joshbuchea/HEAD
7.63:braydie/HowToBeAProgrammer
4.78:sindresorhus/awesome
4.99:tensorflow/tensorflow
11.88:facebook/react
3.26:ParsePlatform/parse-server
2.15:loverajoel/jstips
8.66:facebook/react-native
7.12:vhf/free-programming-books
5.11:vuejs/vue
4.28:airbnb/javascript
caesar0301/awesome-public-datasets
30.74:twbs/bootstrap
82.49:toddmotto/public-apis
19.97:getlantern/lantern
1.71:DrkSephy/es6-cheatsheet
9.99:airbnb/caravel
297.12:googlesamples/android-architecture
2.72:getify/You-Dont-Know-JS
10.44:allenwong/30DaysofSwift
158.06:jgthms/bulma
2.37:dthree/cash
31.84:Rochester-NRT/AlphaGo
6.33:apple/swift
5.01:robbyrussell/oh-my-zsh
105.01:github/gitignore
4.43:facebook/draft-js
11.96:matryer/bitbar
7.32:Microsoft/vscode
9.52:ptmt/react-native-desktop
6.06:p-e-w/maybe
1.00:parkjs814/AlgorithmVisualizer
15.18:hollance/swift-algorithm-club
9.23:alexjc/neural-doodle
4.57:fbsamples/f8app
5.31:nodejs/node
10.22:jiahaog/nativefier
175.43:Microsoft/CNTK
28.29:atom/atom
3.21:jcjohnson/neural-style
10.64:tensorflow/models
3.61:reactjs/redux
4.35:jlevy/the-art-of-command-line
249.78:mbostock/d3
5.37:thejameskyle/the-super-tiny-compiler
4.35:Microsoft/ChakraCore
11.52:nylas/N1
3.34:CRYTEK-CRYENGINE/CRYENGINE
2.95:petehunt/react-howto
6.60:VerbalExpressions/JSVerbalExpressions
6.29:angular/angular.js
2.03:google/agera
8.12:angular/angular
6.54:atom/electron
12.21:mxstbr/react-boilerplate
27.60:kadirahq/react-storybook
3.71:rg3/youtube-dl
5.21:daneden/animate.css
1.40:jbranchaud/til
4.77:docker/docker
24.34:shockone/black-screen
4.87:google/xi-editor
6.54:electron/electron
6.32:CatchChat/Yep
2.79:mhinz/vim-galore
5.24:ReactiveX/RxJava
3.48:josephmisiti/awesome-machine-learning
4.58:weui/weui
80.77:open-source-society/computer-science
2.42:FortAwesome/Font-Awesome
2.14:puikinsh/gentelella
7.23:webpack/webpack
3.76:soimort/you-get
6.52:vinta/awesome-python
42.38:CosmicMind/Material
3.61:typicode/json-server
10.68:aosabook/500lines
5.05:golang/go
6.90:0x5e/wechat-deleted-friends
8.62:dear-github/dear-github
141.53:nlp-compromise/nlp_compromise
275.77:lodash/lodash
1.77:santinic/how2
87.80:google/material-design-lite
8.03:callemall/material-ui
3.53:nvbn/thefuck
13.05:Dogfalo/materialize
2.67:johnpapa/angular-styleguide
6.96:JakeLin/IBAnimatable
1.41:google/seesaw
3.39:amzn/alexa-avs-raspberry-pi
6.87:vsouza/awesome-ios
9.21:letsencrypt/letsencrypt
4.20:google/flexbox-layout
5.46:square/retrofit
11.32:Nickersoft/push.js
11.35:vurtun/nuklear
2.83:jlevy/og-equity-compensation
8.20:facebook/fbctf
2.43:gogits/gogs
41.83:Semantic-Org/Semantic-UI
20.86:AFNetworking/AFNetworking
4.17:eliangcs/http-prompt
4.89:Trinea/android-open-project
8.49:XX-net/XX-Net
23.46:chartjs/Chart.js
2.69:VPenkov/okayNav
5.88:square/okhttp
10.23:meteor/meteor
2.51:cantino/huginn
1.43:socketio/socket.io
3.41:Alamofire/Alamofire
2.62:jayphelps/git-blame-someone-else
6.02:milligram/milligram
9.55:samshadwell/TrumpScript
6.77:babel/babel
17.93:Selz/plyr
3.31:wasabeef/awesome-android-ui
6.13:storehouse/Advance
13.03:aymericdamien/TensorFlow-Examples
4.77:tripit/slate
3.72:reverse-shell/routersploit
6.64:fulldecent/system-bus-radio
4.95:coryhouse/react-slingshot
35.49:sahat/hackathon-starter
6.52:elastic/elasticsearch
2.89:codepath/android_guides
1.89:fastlane/fastlane
3.36:autumnai/leaf
5.57:resume/resume.github.com
1.89:google/material-design-icons
24.69:rethinkdb/horizon
5.03:gulpjs/gulp
6.63:akveo/blur-admin
3.12:phodal/growth-ebook
9.75:thedillonb/CodeHub
5.14:typicode/hotel
2.82:HelloZeroNet/ZeroNet
295.51:laravel/laravel
2.30:lukehoban/es6features
3.26:chinchang/hint.css
5299.08:racaljk/hosts
35.42:driftyco/ionic
4.95:callmecavs/bricks.js
2.92:roughike/BottomBar
2.58:HunterLarco/voxel.css
3.77:IBM-Swift/Kitura
4.05:usablica/intro.js
30.84:mjmlio/mjml
12.29:geeeeeeeeek/electronic-wechat
7.19:langhua9527/BlackheartedHospital
5.19:hakimel/reveal.js
4.77:creationix/nvm
7.67:Ramotion/folding-cell
13.82:jquery/jquery
5065.21:StevenBlack/hosts
41.35:BVLC/caffe
4.69:erikras/react-redux-universal-hot-example
16.55:mrdoob/three.js
11.62:rails/rails
5.79:jekyll/jekyll
4.12:adam-p/markdown-here
1.68:Yalantis/uCrop
10.74:Kickball/awesome-selfhosted
477.01:PerfectlySoft/Perfect
2.97:decosoftware/deco-ide
2.91:airbnb/enzyme
10.85:brave/browser-laptop
```

## Docker

```
docker build -t bbartolome/hofs-churn .
docker run -it --rm bbartolome/hofs-churn bash
git clone https://github.com/${GH_USER}/${GH_REPO}.git
bash ./hofs-churn $(pwd)/${GH_REPO} ${GH_REPO}
```

## FAQ

### Git gets stuck trying to compute the renames but then aborts as it's over a pre-determined limit

Run `git config --global merge.renameLimit 999999` and `git config --global diff.renameLimit 999999` (run at your own risk!)  This will greatly increase processing time for larger repos. https://stackoverflow.com/questions/7830728/

### Git asks for my username and password when cloning a bunch of repos; how do I stop it from asking me?

You can run `hofs-churn` with the `timeout` command (get it from apt-get install `timeout`.) For example, `timeout 1m bash ./hofs-churn` to make `hofs-churn` stop after maximum of one minute, irregardless if it's stuck or not.

## Git says there's an error when cloning a file

It appears to be something with unicode, usually with a `.xcodeproj` files and other non-important files, but otherwise the rest of the clone should complete ok.

## Whoa, I've cloned a massive repo and I'm out of space. How do I avoid large repos?

Run the script with the `timeout` command so that when Git gets stuck on the `no space left on device` error, `timeout` will kill git, then the `rm -rf github_repo` will complete, freeing up space for the next loop (ugly hack.) Try using `cgroups` perhaps. Try cloning one branch (the main branch) instead of all of them (haven't tried this yet.) I'm not sure how that would change the ratio, though, as I'm not sure if git log tracks branches.
