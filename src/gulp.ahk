::gulp`#::
::gulp`#4.0::
::gulp`#4::
    SendRaw,
(
npm i -g gulpjs/gulp#4.0 && npm i gulpjs/gulp#4.0 -S
)
return

::gulp`#css::
::gulp`#sass::
::gulp`#scss::
::gulp-css::
::gulp-sass::
::gulp-scss::
    SendRaw, npm i -S gulp-sass gulp-autoprefixer gulp-sourcemaps browser-sync gulp-ejs
return

::gulp`#es6::
::gulp`#js::
::gulp`#es2015::
::gulp`#ecmascript::
::gulp`#ecma::
::gulp-es6::
::gulp-js::
::gulp-es2015::
::gulp-ecmascript::
::gulp-ecma::
    SendRaw, npm i -S  gulp-babel babel-core babel-preset-env babel-preset-stage-2 babel-plugin-transform-runtime
return

::gulp`#all::
    SendRaw, npm i -g gulpjs/gulp#4.0 && npm i gulpjs/gulp#4.0 gulp-sass gulp-autoprefixer gulp-sourcemaps browser-sync gulp-ejs gulp-babel babel-core babel-preset-env babel-preset-stage-2 babel-plugin-transform-runtime -S
return