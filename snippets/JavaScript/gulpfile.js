// cnpm i -g gulpjs/gulp#4.0 && cnpm i gulpjs/gulp#4.0 gulp-sass gulp-autoprefixer gulp-sourcemaps browser-sync gulp-ejs gulp-rename gulp-babel babel-core babel-preset-env babel-preset-stage-2 gulp-typescript typescript -S
const gulp         = require('gulp')
const babel        = require('gulp-babel')
const ts           = require('gulp-typescript')
const sass         = require('gulp-sass')
const autoprefixer = require('gulp-autoprefixer')
const sourcemaps   = require('gulp-sourcemaps')
const rename       = require('gulp-rename')
const browserSync  = require('browser-sync').create()

// 编译typescript
gulp.task('ts', function () {
    return gulp.src('./src/js/*.ts')
               .pipe(ts({
                  'noImplicitAny': true,
                  'declaration': true,
                  'target': 'es5'
               }))
               .js.pipe(gulp.dest('./dist/js/'))
})

// 编译babel
gulp.task('babel', function () {
    return gulp.src('./components/**/src/*.es')
               .pipe(sourcemaps.init())
               .pipe(babel({
                  presets: [
                      [
                        'env',
                        {
                          'targets': {
                            'browsers': ['last 5 versions', 'ie >= 8']
                          }
                        }
                      ],
                      'babel-preset-stage-2'
                  ]
               }))
               .pipe(sourcemaps.write('./map'))
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
})

// watch
gulp.task('watch', function () {
    // 监听重载文件
    var files = [
        'src/html/*.html',
        'src/css/*.css',
        'src/js/*.es',
        'src/js/*.ts',
        'src/sprite/*.png'
    ]
    browserSync.init(files, {
        server: {
            baseDir: './src/html/',
        }
    })
    gulp.watch('./src/sass/*.scss', gulp.series('sass'))
    gulp.watch('./src/js/*.es', gulp.series('babel'))
    gulp.watch('./src/js/*.js', gulp.series('babel'))
    gulp.watch('./src/html/*.html').on('change', browserSync.reload)
})


// 开发环境
gulp.task('dev', gulp.series(gulp.parallel('sass', 'babel', 'ts'), 'watch'))
