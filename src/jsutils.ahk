!u::

	Menu, utilsMenu, Add, isArray, utilsHandler
	Menu, utilsMenu, Add, isDate, utilsHandler
	Menu, utilsMenu, Add, isFunction, utilsHandler
	Menu, utilsMenu, Add, isNumber, utilsHandler
	Menu, utilsMenu, Add, isEmptyObject, utilsHandler
	Menu, utilsMenu, Add, isObject, utilsHandler
	Menu, utilsMenu, Add, isPromise, utilsHandler
	Menu, utilsMenu, Add, isNaN, utilsHandler

	Menu, utilsMenu, Add, , utilsHandler
	Menu, utilsMenu, Add, , utilsHandler

	Menu, utilsMenu, Add, deepcopy, utilsHandler
	Menu, utilsMenu, Add, getElementPosition, utilsHandler
	Menu, utilsMenu, Add, unqiue, utilsHandler
	Menu, utilsMenu, Add, getuuid, utilsHandler

	Menu, utilsMenu, Add, , utilsHandler
	Menu, utilsMenu, Add, , utilsHandler

	Menu, utilsMenu, Add, addClass, utilsHandler
	Menu, utilsMenu, Add, removeclass , utilsHandler
	Menu, utilsMenu, Add, getclassname, utilsHandler
	Menu, utilsMenu, Add, setStyle, utilsHandler
	Menu, utilsMenu, Add, hasClass, utilsHandler

	Menu, utilsMenu, Show
	Menu, utilsMenu, DeleteAll
return


utilsHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=

if (v == "") {

}

if (v == "isArray") {
Var = 
(
export default function isArray(input) {
    return input instanceof Array || Object.prototype.toString.call(input) === '[object Array]';
}
)
}

if (v == "isDate") {
Var = 
(
export default function isDate(input) {
    return input instanceof Date || Object.prototype.toString.call(input) === '[object Date]';
}
)
}

if (v == "isFunction") {
Var = 
(
export default function isFunction(input) {
    return input instanceof Function || Object.prototype.toString.call(input) === '[object Function]';
}
)
}

if (v == "isNumber") {
Var = 
(
export default function isNumber(input) {
    return typeof input === 'number' || Object.prototype.toString.call(input) === '[object Number]';
}
)
}

if (v == "isEmptyObject") {
Var = 
(
export default function isEmptyObject(obj) {
    if (Object.getOwnPropertyNames) {
        return (Object.getOwnPropertyNames(obj).length === 0);
    } else {
        var k;
        for (k in obj) {
            if (obj.hasOwnProperty(k)) {
                return false;
            }
        }
        return true;
    }
}
)
}

if (v == "isObject") {
Var = 
(
export default function isObject(input) {
    // IE8 will treat undefined and null as object if it wasn't for
    // input != null
    return input != null && Object.prototype.toString.call(input) === '[object Object]';
}

)
}

if (v == "isPromise") {
Var = 
(
export function isPromise (val) {
  return val && typeof val.then === 'function'
}
)
}

if (v == "isNaN") {
Var = 
(
function isNaN(obj) {
    return obj !== obj
}
)
}

if (v == "deepcopy") {
Var = 
(
var deepExtend = function(out) {
  out = out || {};

  for (var i = 1; i < arguments.length; i++) {
    var obj = arguments[i];

    if (!obj)
      continue;

    for (var key in obj) {
      if (obj.hasOwnProperty(key)) {
        if (typeof obj[key] === 'object')
          out[key] = deepExtend(out[key], obj[key]);
        else
          out[key] = obj[key];
      }
    }
  }

  return out;
};

deepExtend({}, objA, objB);
)
}

if (v == "getElementPosition") {
Var = 
(
function getElementPosition (el: Element, offset: Object): Object {
  const docEl: any = document.documentElement
  const docRect = docEl.getBoundingClientRect()
  const elRect = el.getBoundingClientRect()
  return {
    x: elRect.left - docRect.left - offset.x,
    y: elRect.top - docRect.top - offset.y
  }
}
)
}

if (v == "unqiue") {
Var = 
(
var unique = function (arr) {
    var hash = {},
        i = arr.length,
        key, res = []
    while (i--) {
        key = arr[i]
        if (hash[key]) continue
        hash[key] = 1
        res.unshift(key)
    }
    return res
}
)
}

if (v == "getuuid") {
Var = 
(
function getUUID () {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    return (c === 'x' ? (Math.random() * 16 | 0) : ('r&0x3' | '0x8')).toString(16)
  })
}
)
}

if (v == "addClass") {
Var = 
(
export const addClass = (el, cls) => {
        if (el.classList) {
            el.classList.add(cls)
        } else {
            var cur = ' ' + utils.getClassName(el) + ' '
            if (cur.indexOf(' ' + cls + ' ') < 0) {
                el.setAttribute('class', (cur + cls).trim())
            }
        }
    }
)
}

if (v == "removeclass") {
Var = 
(
export const removeClass = (el, cls) => {
        if (el.classList) {
            el.classList.remove(cls)
        } else {
            var cur = ' ' + utils.getClassName(el) + ' ',
                tar = ' ' + cls + ' '
            while (cur.indexOf(tar) >= 0) {
                cur = cur.replace(tar, ' ')
            }
            el.setAttribute('class', cur.trim())
        }
    }
)
}

if (v == "getclassname") {
Var = 
(
export const getClassName = (el) => {
        return (el.className instanceof SVGAnimatedString ? el.className.baseVal : el.className)
    }
)
}

if (v == "setStyle") {
Var = 
(
export const setStyle = (element, styleName, value) => {
    if (!element || !styleName) return;

    if (typeof styleName === 'object') {
        for (var prop in styleName) {
            if (styleName.hasOwnProperty(prop)) {
                setStyle(element, prop, styleName[prop]);
            }
        }
    } else {
        styleName = camelCase(styleName);
        if (styleName === 'opacity' && ieVersion < 9) {
            element.style.filter = isNaN(value) ? '' : 'alpha(opacity=' + value * 100 + ')';
        } else {
            element.style[styleName] = value;
        }
    }
};
)
}


code(Var)
return