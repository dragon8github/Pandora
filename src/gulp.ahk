::gulp`#::
::gulp`#all::
::gulp.all::
::gulp::
    SendInput, {text}  cnpm i -g gulpjs/gulp#4.0 && cnpm i gulpjs/gulp#4.0 gulp-sass gulp-clean-css gulp-autoprefixer gulp-sourcemaps browser-sync gulp-ejs gulp-rename gulp-babel babel-core babel-preset-env babel-preset-stage-2 gulp-typescript typescript gulp.spritesmith -S
return


::gulp.watch::
::gulp#watch::
Var =
(
const gulp = require('gulp');
var browserSync = require('browser-sync').create();
var reload      = browserSync.reload;

// 静态服务器
gulp.task('start', function() {
    browserSync.init({
        server: {
            baseDir: './'
        }
    });
    gulp.watch(['./index.html', 'css/*.css', 'js/*.js']).on('change', reload);
});
)
code(Var)
return

::gulp.sass::
::gulp.scss::
::gulp#scss::
::gulp#sass::
Var =
(
const gulp         = require('gulp');
const sass         = require('gulp-sass');
const autoprefixer = require('gulp-autoprefixer');
const sourcemaps   = require('gulp-sourcemaps');
const cleanCSS 	   = require('gulp-clean-css');
const browserSync  = require('browser-sync').create();
const reload       = browserSync.reload;

gulp.task('sass', function () {
  return gulp.src('./sass/*.scss')
        .pipe(sourcemaps.init())
        .pipe(autoprefixer({
             browsers: ['last 2 version', 'safari 5', 'ie 8', 'ie 9', 'opera 12.1', 'ios 6', 'android 4'],
             cascade: true,
             remove: true
        }))
        .pipe(sass().on('error', sass.logError))
        .pipe(cleanCSS({compatibility: 'ie8'}))
        .pipe(sourcemaps.write('./maps')) // 请注意这个地址是相对于dest地址的。
        .pipe(gulp.dest('./css'))
});

// 静态服务器
gulp.task('start', function() {
    browserSync.init({
        server: {
            baseDir: './'
        }
    });
    gulp.watch(['./index.html', 'css/*.css', 'js/*.js']).on('change', reload);
});
)
code(Var)
return