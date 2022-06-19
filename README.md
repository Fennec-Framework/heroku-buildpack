# a heroku-buildpack to deploy fennec framework to heroku cloud

# how to use it

- **Create a new Heroku app**
  you can use the the GUI or CLI via running that on terminal: heroku create name_app. after creating the app , you need to initialize your project with github.
  git init
  git add remote heroku https://git.heroku.com/app_name.git

- **create a file named Procfile with the path for your main file**
  example of content : web: ./dart-sdk/bin/dart bin/fennec_heroku_example.dart

- **config DART_SDK_URL for dart**
  for heroku you need to use a dart sdk url for linux from here https://dart.dev/get-dart/archive

  used link for this example : https://storage.googleapis.com/dart-archive/channels/stable/release/2.17.3/sdk/dartsdk-linux-x64-release.zip

  run this on termin : heroku config:set DART_SDK_URL = <dart_sdk_url>

- **config BUILDPACK_URL**

  run this on termin : heroku config:add BUILDPACK_URL=https://github.com/Fennec-Framework/heroku-buildpack.git

- **deploy**
  git add . # Adds all files to git in this repository
  git push --set-upstream heroku main # Sets the upstream branch to heroku main and pushes all files

- **useful links:**
  https://flutter-explained.dev/deploy-dart-server-on-heroku
  https://codeburst.io/deploying-dart-2-apps-on-heroku-27fa120f1ec4
