

var widget146410 = {};

widget146410.viewFired = false;
widget146410.scriptUrl = "http://api.content-ad.net/Scripts/widget2.aspx?id=d6f7e909-a8c1-447b-bdf0-2611789903b5&d=d2F2c291cmNlLmNvbQ%3D%3D&wid=146410&exitPop=true&cb=1622199303267";
widget146410.b64={key:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",decode:function(input){var output="";var chr1,chr2,chr3;var enc1,enc2,enc3,enc4;var i=0;input=input.replace(/[^A-Za-z0-9\+\/\=]/g,"");while(i<input.length){enc1=this.key.indexOf(input.charAt(i++));enc2=this.key.indexOf(input.charAt(i++));enc3=this.key.indexOf(input.charAt(i++));enc4=this.key.indexOf(input.charAt(i++));chr1=(enc1<<2)|(enc2>>4);chr2=((enc2&15)<<4)|(enc3>>2);chr3=((enc3&3)<<6)|enc4;output=output+String.fromCharCode(chr1);if(enc3!=64){output=output+String.fromCharCode(chr2)}if(enc4!=64){output=output+String.fromCharCode(chr3)}}return output}};
widget146410.readCookie = function (name) {
    var nameWithEqual = name + "=";
    var params = document.cookie.split(';');
    for(var i = 0; i < params.length; i++) {
        var nameValuePair = params[i];
        while (nameValuePair.charAt(0) == ' ') nameValuePair = nameValuePair.substring(1, nameValuePair.length);
        if (nameValuePair.indexOf(nameWithEqual) == 0) return nameValuePair.substring(nameWithEqual.length, nameValuePair.length);
    }
    return null;
};

widget146410.updateSourceCookie = function (name, value) {
    var d = new Date();
    d.setTime(d.getTime() + (30*60*1000));
    document.cookie = name + "=" + value + ";path=/;expires=" + d.toUTCString();
};

widget146410.params = (function () {
    var result = {}, queryString = widget146410.scriptUrl.substring(widget146410.scriptUrl.indexOf("?")+1), re = /([^&=]+)=([^&]*)/g, m;
    while (m = re.exec(queryString)) {
        result[decodeURIComponent(m[1])] = decodeURIComponent(m[2]);
    }

    var scriptUrlFromDomain = widget146410.scriptUrl.substr(widget146410.scriptUrl.indexOf("://") + 3);
    var server = scriptUrlFromDomain.substr(0, scriptUrlFromDomain.indexOf("/"));
    var url = result["url"] ? decodeURIComponent(result["url"]) : decodeURIComponent(window.location);
    
    result["lazyLoad"] = (result["lazyLoad"] == true ? true : false);
    result["server"] = (result["test"] == true ? "test." + server : server);
    if (result["server"].indexOf(widget146410.b64.decode("YXBpLmNvbnRlbnQuYWQ=")) > -1) {
        result["server"] = widget146410.b64.decode("YXBpLmNvbnRlbnQtYWQubmV0");
    }
    result["title"] = (result["title"] ? result["title"] : encodeURI(escape(document.title)));
    result["url"] = encodeURIComponent(url);
    result["ik"] = encodeURI("2021052803_22339ebb1f683a581b8ebef78cf8872e");
    result["ikb"] = encodeURI("22339ebb1f683a581b8ebef78cf8872e");
    result["ls"] = encodeURI("ip-172-18-2-80.ec2.internal");
    if (result["clientId"] !== undefined) {
        result["clientId"] = encodeURI(result["clientId"]);
    }
    if (result["clientId2"] !== undefined) {
        result["clientId2"] = encodeURI(result["clientId2"]);
    }

    if (result["pre"] != undefined) {
        result["pre"] = encodeURIComponent(result["pre"]);
    }

    if (result["clientId"] === undefined && result["clientId2"] === undefined) {
        var pageParams = {}, pageQueryString = url.substring(url.indexOf("?")+1), pm;
	    while (pm = re.exec(pageQueryString)) {
	        pageParams[decodeURIComponent(pm[1])] = decodeURIComponent(pm[2]);
	    }
	    
	    
	    var source = widget146410.readCookie("source");
	    var campaign = widget146410.readCookie("campaign");
        if (pageParams["utm_source"] !== undefined && pageParams["utm_source"] !== "") {
            if (pageParams["utm_source"] !== source) {
                widget146410.updateSourceCookie("source", pageParams["utm_source"]);
            }
            result["clientId"] = encodeURI(pageParams["utm_source"]);
        } else if (source !== null && source !== "") {
            result["clientId"] = encodeURI(source);
        }

        if (pageParams["utm_campaign"] !== undefined && pageParams["utm_campaign"] !== "") {
            if (pageParams["utm_campaign"] !== campaign) {
                widget146410.updateSourceCookie("campaign", pageParams["utm_campaign"]);
            }
            result["clientId2"] = encodeURI(pageParams["utm_campaign"]);
        } else if (campaign !== null && campaign !== "") {
            result["clientId2"] = encodeURI(campaign);
        }
    }
    return result;
} ());

widget146410.paramList = [];
for (var key in widget146410.params) {
    widget146410.paramList.push(key + '=' + widget146410.params[key]);
}

widget146410.widgetUrl = (location.protocol === 'https:' ? 'https:' : 'http:') + "//" + widget146410.params.server + "/GetWidget.aspx?" + widget146410.paramList.join('&');
widget146410.isLoaded = false;

widget146410.init = function (widgetId, widgetUrl, lazyLoad, loadMultiple) {
    if (typeof (window["contentAd" + widgetId]) == 'undefined') {
        if (!widget146410.isLoaded) {
            widget146410.isLoaded = true;
            if (lazyLoad) {
                (function () {
                    function asyncLoad() {
                        var s = document.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = widgetUrl;
                        var x = document.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }
                    if (window.attachEvent)
                        window.attachEvent('onload', asyncLoad);
                    else
                        window.addEventListener('load', asyncLoad, false);
                })();
            } else {
                (function () {
                    var s = document.createElement('script');
                    s.type = 'text/javascript';
                    s.async = true;
                    s.src = widgetUrl;
                    var x = document.getElementsByTagName('script')[0];
                    x.parentNode.insertBefore(s, x);
                })();
            }
        }
        setTimeout(function () { widget146410.init(widgetId, widgetUrl, lazyLoad, loadMultiple) }, 50);
    } else {
        var content = window["contentAd" + widgetId]();
        var container = document.getElementById(widget146410.b64.decode("Y29udGVudGFk") + widgetId);
        var newDiv = document.createElement("div");
        newDiv.innerHTML = content;
        if (container === undefined || container === null) {
            var scripts = document.getElementsByTagName("script");
		    for (var i = 0; i < scripts.length; i++) {
			    if (scripts[i].innerHTML !== undefined && scripts[i].innerHTML.toLowerCase().indexOf("d6f7e909-a8c1-447b-bdf0-2611789903b5") !== -1) {
			        scripts[i].parentNode.insertBefore(newDiv, scripts[i]);
			    }
	        }
        } else {
            container.parentNode.insertBefore(newDiv, container);
        }
        
        if (typeof (window["initJQuery" + widgetId]) != 'undefined') {
            window["initJQuery" + widgetId]();
        }
        if (loadMultiple) {
            window["contentAd" + widgetId] = undefined;
        }
        
        if (typeof (window["widget" + widgetId]) != 'undefined' && typeof (window["widget" + widgetId].customPlacement) != 'undefined') {
            if (typeof (window["widget" + widgetId].renderCustomStyleAndHtml) != 'undefined') {
	            widget146410.customContent = window["widget" + widgetId].renderCustomStyleAndHtml();
	            widget146410.customContainer = document.createElement("div");
	            widget146410.customContainer.innerHTML = widget146410.customContent;
	            
	            if (window["widget" + widgetId].customPlacement() === 'top') {
	                newDiv.parentNode.insertBefore(widget146410.customContainer, newDiv);
	            } else {
	                newDiv.parentNode.insertBefore(widget146410.customContainer, newDiv.nextSibling);
	            }
            }
            
            if (typeof (window["widget" + widgetId].renderCustomScript) != 'undefined') {
                widget146410.customScript = window["widget" + widgetId].renderCustomScript();
                widget146410.customScriptTag = document.createElement("script");
                widget146410.customScriptTag.innerHTML = widget146410.customScript;
                
                widget146410.documentWrite = document.write;
                widget146410.customScriptOutput = document.createElement("div");
                widget146410.customScriptOutput.innerHTML = '';
				document.write = function(line) {
				    widget146410.customScriptOutput.innerHTML += line;
				}
				
                if (window["widget" + widgetId].customPlacement() === 'top') {
                    newDiv.parentNode.insertBefore(widget146410.customScriptTag, newDiv);
                    newDiv.parentNode.insertBefore(widget146410.customScriptOutput, newDiv);
                } else {
                    if (typeof (window["widget" + widgetId].renderCustomStyleAndHtml) != 'undefined') {
                        newDiv.parentNode.insertBefore(widget146410.customScriptTag, newDiv.nextSibling.nextSibling);
                        newDiv.parentNode.insertBefore(widget146410.customScriptOutput, newDiv.nextSibling.nextSibling);
                    } else {
                        newDiv.parentNode.insertBefore(widget146410.customScriptTag, newDiv.nextSibling);
                        newDiv.parentNode.insertBefore(widget146410.customScriptOutput, newDiv.nextSibling);
                    }                
                }
                
                document.write = widget146410.documentWrite;
            }
        }
        
        var isExitPop = widget146410.params.exitPop === 'true' || widget146410.params.exitPop === '1';
        var isExitPopMobile = widget146410.params.exitPopMobile === 'true' || widget146410.params.exitPopMobile === '1';
        var pixelUrl = window["widget" + widgetId].viewabilityPixel();
        if (isExitPop || isExitPopMobile) {
            if (!widget146410.viewFired) {
                var px = new Image(1,1);
                px.src = pixelUrl;
                widget146410.viewFired = true;
            }
        } else {
            widget146410.checkViewability(newDiv, pixelUrl);
        }
    }
};

widget146410.updatePopCookie = function () {
    if (document.cookie.indexOf("popdays") == -1) {
        var d = new Date();
        if (widget146410.params.exitPopExpireDays === undefined) {
            widget146410.params.exitPopExpireDays = 0;
            d.setTime(d.getTime() + (30*60*1000));
        } else {
            d.setTime(d.getTime() + (widget146410.params.exitPopExpireDays*24*60*60*1000));
        }
        document.cookie = "popdays=" + widget146410.params.exitPopExpireDays + ";path=/;expires=" + d.toUTCString();

        widget146410.init(widget146410.params.wid, widget146410.widgetUrl, widget146410.params.lazyLoad, widget146410.params.loadMultiple);
    } else {
        if (widget146410.params.exitPopExpireDays > 0 && widget146410.readCookie("popdays") != widget146410.params.exitPopExpireDays) {
            var d = new Date();
            d.setTime(d.getTime() + (widget146410.params.exitPopExpireDays*24*60*60*1000));
            document.cookie = "popdays=" + widget146410.params.exitPopExpireDays + ";path=/;expires=" + d.toUTCString();
        } else if (widget146410.params.exitPopExpireDays <= 0) {
            document.cookie = "popdays=-1;path=/;expires=Thu, 01 Jan 1970 00:00:01 GMT";
            widget146410.init(widget146410.params.wid, widget146410.widgetUrl, widget146410.params.lazyLoad, widget146410.params.loadMultiple);
        } else if (widget146410.params.exitPopExpireDays === undefined && widget146410.readCookie("popdays") > 0) {
            var d = new Date();
            d.setTime(d.getTime() + (30*60*1000));
            document.cookie = "popdays=0;path=/;expires=" + d.toUTCString();
        }
    }
};

widget146410.scrollChange = function () {
    var totalHeight, currentScroll, visibleHeight;
      
    if (document.documentElement.scrollTop) {
        currentScroll = document.documentElement.scrollTop;
    } else { 
        currentScroll = document.body.scrollTop;
    }
      
    totalHeight = document.body.offsetHeight;
    visibleHeight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
    var tempScroll = currentScroll + visibleHeight;
    var atEndOfPage = totalHeight <= tempScroll + (totalHeight * 0.10);
    var isScrollingUp = tempScroll < widget146410.lowestScroll;
    var hasScrolledDown = widget146410.lowestScroll > 100;
    
    if (widget146410.lowestScroll === undefined || tempScroll > widget146410.lowestScroll) {
        widget146410.lowestScroll = tempScroll;
    }

    if ((atEndOfPage || (hasScrolledDown && isScrollingUp)) && !widget146410.isLoaded) {
        widget146410.updatePopCookie();
    }
};

widget146410.mouseCoordinates = function (e) {
    var tempX = 0, tempY = 0;

    if (!e) var e = window.event;
    tempX = e.clientX;
    tempY = e.clientY;
        
    if (tempX < 0) tempX = 0;
    if (tempY < 0) tempY = 0;
    
    if (widget146410.lowestY === undefined || tempY > widget146410.lowestY) {
        widget146410.lowestY = tempY;
    }
    
    if (tempY <= 20 && tempY < widget146410.lowestY && widget146410.lowestY > 100 && !widget146410.isLoaded) {
        widget146410.updatePopCookie();
    }
};

widget146410.exitPopMobile = false;
if (widget146410.params.exitPopMobile === 'true' || widget146410.params.exitPopMobile === '1') {
    widget146410.exitPopMobile = true;
    var touchEnabled = ('ontouchstart' in window) || (window.DocumentTouch && document instanceof DocumentTouch);
    var isMobile = false;
    if (navigator.userAgent !== undefined) {
        var userAgent = navigator.userAgent.toLowerCase();
        var iPhoneIndex = userAgent.indexOf("iphone");
        var iPadIndex = userAgent.indexOf("ipad");
        var isIPhone = (iPhoneIndex !== -1 && iPadIndex === -1) || (iPhoneIndex !== -1 && iPhoneIndex < iPadIndex);
        var isAndroid = userAgent.indexOf("android") !== -1 && userAgent.indexOf("mobile") !== -1;
        var isOtherMobile = userAgent.match(/^.*?(ipod|blackberry|mini|windows\\sce|palm|phone|mobile|smartphone|iemobile).*?$/) != null;
        isMobile = isIPhone || isAndroid || isOtherMobile;
    }
    
    if (touchEnabled && isMobile) {
        setInterval(widget146410.scrollChange, 50);
    }
}

widget146410.exitPop = false;
if (widget146410.params.exitPop === 'true' || widget146410.params.exitPop === '1') {
    widget146410.exitPop = true;
    if (widget146410.params.exitPopExpireDays === undefined && widget146410.readCookie("popdays") == 0) {
        var d = new Date();
        d.setTime(d.getTime() + (30*60*1000));
        document.cookie = "popdays=0;path=/;expires=" + d.toUTCString();
    }
    var isInternetExplorer = document.all ? true : false;
    if (!isInternetExplorer) document.captureEvents(Event.MOUSEMOVE);
    try {
        document.addEventListener('mousemove', widget146410.mouseCoordinates, false);
    } catch (e) {
        document.attachEvent('onmousemove', widget146410.mouseCoordinates);
    } finally {
        try {
            if (document.onmousemove) {
                var oldOnMouseMove = document.onmousemove;
                document.onmousemove = function(e) {
                    oldOnMouseMove(e);
                    widget146410.mouseCoordinates(e);
                };
            } else {
                document.onmousemove = function(e) {
                   widget146410.mouseCoordinates(e);
                };
            }
        } catch(e) {
        
        }
    }
}

widget146410.checkViewability = function(target, url) {
	var br = target.getBoundingClientRect();
	var x = br.left;
	var y = br.top;
	var ww = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
	var hw = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
	var w = target.clientWidth;
	var h = target.clientHeight;
	    
	if ((y < hw && y + h > 0) && (x < ww && x + w > 0)) {
	    if (!widget146410.viewFired) {
	        var i = new Image(1,1);
	        i.src = url;
	        widget146410.viewFired = true;
	    }
	} else {
	    setTimeout(function() { widget146410.checkViewability(target, url) }, 500);
	}
};

if (!widget146410.exitPop && !widget146410.exitPopMobile) {
    widget146410.init(widget146410.params.wid, widget146410.widgetUrl, widget146410.params.lazyLoad, widget146410.params.loadMultiple);
}