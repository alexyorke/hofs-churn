# hofs-churn
Approximate code churn as described by Brikman's article https://www.ybrikman.com/writing/2018/08/12/the-10-to-1-rule-of-writing-and-programming/


## How to use

- create a file called git_repos.txt, with lines with the Github repos that will be analyzed. For example, `Decagon/hofs-churn`.
- run the following script (which will download the repo from Github.com, calculate stats, then delete it.)

```
while read line; do
git clone https://github.com/$line.git github_repo;
bash ./hofs-churn github_repo "$line";
rm -rf github_repo;
done < git_repos.txt > results.txt
```

If you want to run it on a local repo, or just a single already downloaded but cloned repo, run `bash ./hofs-churn path-to-git-repo github-repo-name;`

The results will be in results.txt (example output shown below):

```
43.10:FreeCodeCamp/FreeCodeCamp
4.50:firehol/netdata
12.40:joshbuchea/HEAD
4.41:braydie/HowToBeAProgrammer
4.78:sindresorhus/awesome
4.99:tensorflow/tensorflow
27.15:facebook/react
4.38:ParsePlatform/parse-server
4.57:loverajoel/jstips
60.09:facebook/react-native
7.24:vhf/free-programming-books
12.55:vuejs/vue
8.09:airbnb/javascript
caesar0301/awesome-public-datasets
44.49:twbs/bootstrap
94.83:toddmotto/public-apis
32.41:getlantern/lantern
1.71:DrkSephy/es6-cheatsheet
12.09:airbnb/caravel
896.94:googlesamples/android-architecture
.40:getify/You-Dont-Know-JS
.89:allenwong/30DaysofSwift
158.25:jgthms/bulma
2.37:dthree/cash
32.49:Rochester-NRT/AlphaGo
7.04:apple/swift
5.00:robbyrussell/oh-my-zsh
108.86:github/gitignore
10.17:facebook/draft-js
12.77:matryer/bitbar
7.47:Microsoft/vscode
9.42:ptmt/react-native-desktop
6.06:p-e-w/maybe
1.00:parkjs814/AlgorithmVisualizer
9.54:hollance/swift-algorithm-club
17.63:alexjc/neural-doodle
4.55:fbsamples/f8app
8.80:nodejs/node
10.64:jiahaog/nativefier
325.12:Microsoft/CNTK
28.56:atom/atom
3.21:jcjohnson/neural-style
40.01:tensorflow/models
5.03:reactjs/redux
4.35:jlevy/the-art-of-command-line
266.06:mbostock/d3
4.48:thejameskyle/the-super-tiny-compiler
4.36:Microsoft/ChakraCore
24.23:nylas/N1
3.91:CRYTEK-CRYENGINE/CRYENGINE
2.95:petehunt/react-howto
6.51:VerbalExpressions/JSVerbalExpressions
9.29:angular/angular.js
4.28:torvalds/linux
2.03:google/agera
9.09:angular/angular
7.15:atom/electron
15.86:mxstbr/react-boilerplate
32.07:kadirahq/react-storybook
4.69:rg3/youtube-dl
6.25:daneden/animate.css
1.40:jbranchaud/til
5.01:docker/docker
24.20:shockone/black-screen
4.88:google/xi-editor
7.15:electron/electron
7.99:CatchChat/Yep
2.79:mhinz/vim-galore
28.34:ReactiveX/RxJava
3.83:josephmisiti/awesome-machine-learning
4.89:weui/weui
80.77:open-source-society/computer-science
27.29:FortAwesome/Font-Awesome
3.68:puikinsh/gentelella
8.10:webpack/webpack
4.28:soimort/you-get
20.46:vinta/awesome-python
41.77:CosmicMind/Material
3.92:typicode/json-server
10.64:aosabook/500lines
5.15:golang/go
6.90:0x5e/wechat-deleted-friends
8.62:dear-github/dear-github
143.40:nlp-compromise/nlp_compromise
445.58:lodash/lodash
1.77:santinic/how2
113.54:google/material-design-lite
8.25:callemall/material-ui
3.53:nvbn/thefuck
13.86:Dogfalo/materialize
2.67:johnpapa/angular-styleguide
6.97:JakeLin/IBAnimatable
1.41:google/seesaw
3.37:amzn/alexa-avs-raspberry-pi
6.87:vsouza/awesome-ios
10.99:letsencrypt/letsencrypt
8.91:google/flexbox-layout
23.96:square/retrofit
21.65:Nickersoft/push.js
11.23:vurtun/nuklear
19.98:jlevy/og-equity-compensation
8.22:facebook/fbctf
2.40:gogits/gogs
42.79:Semantic-Org/Semantic-UI
13.00:AFNetworking/AFNetworking
4.48:eliangcs/http-prompt
3.95:Trinea/android-open-project
10.81:XX-net/XX-Net
29.48:chartjs/Chart.js
6.85:VPenkov/okayNav
17.67:square/okhttp
13.42:meteor/meteor
2.53:cantino/huginn
4.34:socketio/socket.io
4.14:Alamofire/Alamofire
19.95:Microsoft/TypeScript
2.62:jayphelps/git-blame-someone-else
6.01:milligram/milligram
10.16:samshadwell/TrumpScript
6.78:babel/babel
17.86:Selz/plyr
3.39:wasabeef/awesome-android-ui
7.45:storehouse/Advance
9.30:aymericdamien/TensorFlow-Examples
4.89:tripit/slate
3.71:reverse-shell/routersploit
5.02:fulldecent/system-bus-radio
5.99:coryhouse/react-slingshot
35.17:sahat/hackathon-starter
9.78:elastic/elasticsearch
2.89:codepath/android_guides
1.96:fastlane/fastlane
60.77:autumnai/leaf
5.57:resume/resume.github.com
2.68:google/material-design-icons
39.50:rethinkdb/horizon
6.21:gulpjs/gulp
9.28:akveo/blur-admin
3.17:phodal/growth-ebook
12.80:thedillonb/CodeHub
5.15:typicode/hotel
2.81:HelloZeroNet/ZeroNet
293.54:laravel/laravel
2.30:lukehoban/es6features
3.28:chinchang/hint.css
5420.48:racaljk/hosts
58.75:driftyco/ionic
4.98:callmecavs/bricks.js
3.28:roughike/BottomBar
2.60:HunterLarco/voxel.css
4.13:IBM-Swift/Kitura
6.66:usablica/intro.js
35.73:mjmlio/mjml
12.22:geeeeeeeeek/electronic-wechat
68.57:langhua9527/BlackheartedHospital
6.36:hakimel/reveal.js
2.90:creationix/nvm
7.60:Ramotion/folding-cell
35.23:jquery/jquery
5065.31:StevenBlack/hosts
92.91:BVLC/caffe
4.76:erikras/react-redux-universal-hot-example
20.56:mrdoob/three.js
12.85:rails/rails
5.97:jekyll/jekyll
7.34:adam-p/markdown-here
2.79:Yalantis/uCrop
10.76:Kickball/awesome-selfhosted
464.03:PerfectlySoft/Perfect
5.49:decosoftware/deco-ide
15.75:airbnb/enzyme
16.43:brave/browser-laptop
6.29:keithwhor/nodal
1.85:mholt/caddy
7.79:kubernetes/kubernetes
20.44:kriasoft/react-starter-kit
3.81:pyupio/statuspage
143.68:google/guava
2.81:NARKOZ/hacker-scripts
2.03:schollz/find
14.85:ecomfe/echarts
2.94:Freelander/Android_Data
61.61:yangyangwithgnu/hardseed
3.55:ansible/ansible
3.39:buunguyen/octotree
42.81:mortenjust/cleartext-mac
3.15:futurice/android-best-practices
9.30:JakeWharton/butterknife
38.59:scikit-learn/scikit-learn
7.82:tensorflow/playground
5.41:dkhamsing/open-source-ios-apps
2.62:Jam3/devtool
15.92:ReactiveX/RxAndroid
14.10:expressjs/express
9.67:PhilJay/MPAndroidChart
43.53:FezVrasta/popper.js
14.72:reactjs/react-router
18.13:hexojs/hexo
121.09:facebook/immutable-js
5.13:avelino/awesome-go
7.42:x64dbg/x64dbg
12.02:syl20bnr/spacemacs
6.94:fchollet/keras
16.27:feathersjs/feathers
19.12:scrapy/scrapy
27.99:serverless/serverless
3.62:hiloteam/Hilo
6.25:Reactive-Extensions/RxJS
13.09:necolas/normalize.css
32.86:django/django
2.78:danielquinn/paperless
2.79:donnemartin/gitsome
21.23:jondot/awesome-react-native
3.22:tflearn/tflearn
1.41:ibireme/YYKit
9.78:matteocrippa/awesome-swift
6.26:andlabs/libui
5.76:bevacqua/dragula
2.08:amznlabs/amazon-dsstne
3.70:apex/apex
12.44:jtoy/awesome-tensorflow
9.74:jkbrzt/httpie
5.28:relax/relax
7.97:viljamis/feature.js
6.85:google/EarlGrey
8.35:google/protobuf
10.86:feross/webtorrent
6.55:enaqx/awesome-react
4.68:developit/preact
6.39:almasaeed2010/AdminLTE
151.22:thejameskyle/spectacle-code-slide
3.58:h5bp/Front-end-Developer-Interview-Questions
3.20:tldr-pages/tldr
4.23:pavelgonchar/colornet
4.99:bang590/JSPatch
42.59:bumptech/glide
78.43:redox-os/redox
12.93:luin/medis
6.72:spf13/hugo
5.88:github/fetch
46.18:kennethreitz/requests
5.13:facebook/redex
4.85:greenrobot/EventBus
9.00:SnapKit/Masonry
20.93:davezuko/react-redux-starter-kit
6.33:sindresorhus/ava
27.70:rethinkdb/rethinkdb
5.35:nwjs/nw.js
5.86:neovim/neovim
1.79:gsdios/SDAutoLayout
5.58:kazzkiq/balloon.css
3.89:cisco/ChezScheme
14.38:rust-lang/rust
2.47:kyleneideck/BackgroundMusic
6.77:iluwatar/java-design-patterns
17.35:grafana/grafana
8.42:alvarotrigo/fullPage.js
23.87:snare/voltron
6.30:angular/material2
3.07:ampproject/amphtml
3.81:jonsuh/hamburgers
6.36:CoderMJLee/MJRefresh
15.24:JetBrains/kotlin
2.22:markerikson/react-redux-links
1.56:danielzeller/Depth-LIB-Android-
2394.78:ssloy/tinyrenderer
5.89:square/leakcanary
11.47:picturepan2/spectre
7.33:moment/moment
6.86:ReactiveX/RxSwift
10.12:rs/SDWebImage
1.91:denysdovhan/bash-handbook
1.97:0xAX/linux-insides
5.68:koajs/koa
12.07:isocpp/CppCoreGuidelines
2.04:petehunt/webpack-howto
7.12:ipader/SwiftGuide
25.76:postcss/postcss
6.27:SwiftyJSON/SwiftyJSON
7.80:yabwe/medium-editor
13.05:justjavac/free-programming-books-zh_CN
4.96:sindresorhus/awesome-nodejs
3.98:relatedcode/ParseAlternatives
8.76:antirez/redis
1.71:rackt/redux
4.86:Bilibili/ijkplayer
3.89:awentzonline/image-analogies
2.66:steshaw/plt
12.39:sindresorhus/awesome-electron
61.02:ReactiveCocoa/ReactiveCocoa
2.71:xgrommx/awesome-redux
250.94:qutheory/vapor
2.97:vuejs/awesome-vue
3.70:feross/standard
29.79:dylang/npm-check
9.12:openai/gym
3.95:so-fancy/diff-so-fancy
39.40:Unitech/pm2
13.94:mzabriskie/axios
14.24:yelouafi/redux-saga
78.53:h5bp/html5-boilerplate
3.22:IonicaBizau/scrape-it
13.22:caolan/async
5.05:MarshallOfSound/Google-Play-Music-Desktop-Player-UNOFFICIAL-
1.81:baidu-research/warp-ctc
3.95:stevemao/diff-so-fancy
2.87:vasanthk/js-bits
2.59:DreaminginCodeZH/Douya
13.67:nvdv/vprof
1.88:fouber/blog
2.04:shekhargulati/52-technologies-in-2016
8.58:hacksalot/HackMyResume
2.13:antelle/keeweb
7.03:RocketChat/Rocket.Chat
3.72:timothycrosley/hug
3.16:Croteam-official/Serious-Engine

```


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
