// cnpm i -g gulpjs/gulp#4.0 && npm i gulpjs/gulp#4.0 gulp-sass gulp-autoprefixer gulp-sourcemaps browser-sync gulp-ejs gulp-babel babel-core babel-preset-env babel-preset-stage-2 babel-plugin-transform-runtime -S
const gulp         = require('gulp')
const babel        = require('gulp-babel');
const sass         = require('gulp-sass')
const autoprefixer = require('gulp-autoprefixer')
const sourcemaps   = require('gulp-sourcemaps');
const rename       = require('gulp-rename');
var browserSync    = require('browser-sync').create();
var reload         = browserSync.reload;

// 编译babel
gulp.task('babel', function () {
    return gulp.src('./components/**/src/*.js')
               .pipe(sourcemaps.init())
               .pipe(babel({
                  presets: [
                      [
                        "env",
                        {
                          "targets": {
                            "browsers": ["last 5 versions", "ie >= 8"]
                          }
                        }
                      ],
                      "babel-preset-stage-2"
                  ],
                  plugins: [
                      'transform-runtime'
                  ]
               }))
               .pipe(sourcemaps.write('./map')) 
               .pipe(rename(function (path) {
               .pipe(gulp.dest('./dist/assets/js'))

})

// 编译sass
gulp.task('sass', function () {
  return gulp.src('./src/sass/*.scss')
        .pipe(sourcemaps.init())
        .pipe(autoprefixer({
             browsers: ['last 2 version', 'safari 5', 'ie 8', 'ie 9', 'opera 12.1', 'ios 6', 'android 4'],
             cascade: true,
             remove: true
        }))
        .pipe(sass().on('error', sass.logError))
        .pipe(sourcemaps.write('./maps'))
        .pipe(gulp.dest('./dist/assets/css'))
});


// 静态服务器
gulp.task('dev', ['sass'], function() {
    browserSync.init({
        server: {
            baseDir: "./src/html/"
        }
    });
    gulp.watch("./src/sass/*.scss", ['sass']);
    gulp.watch("./src/sass/*.js", ['babel'])
    gulp.watch("./index.html").on('change', reload);
});
