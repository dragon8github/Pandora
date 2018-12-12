// ==UserScript==
// @name         apizza.net
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       You
// @match        https://apizza.net/console/project/*
// @match        https://apizza.net/pro/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    var styles = document.createElement('style')
    styles.id = 'fuckyou'
    styles.type = 'text/css'
    document.getElementsByTagName('head')[0].appendChild(styles)

    // 新版本美化
    styles.sheet.addRule('.tab-pane', 'margin-bottom: 20px')
    styles.sheet.addRule('.ace_editor.ace-eclipse', 'height: 350px !important')
    styles.sheet.addRule('.request-panel .response-content, .response-panel', 'min-height: 350px !important')

    // 旧版本美化
    styles.sheet.addRule('#response-body', 'height: 350px; overflow: scroll;')
    styles.sheet.addRule('.panel-response-textarea', 'min-height: 350px !important')
})();