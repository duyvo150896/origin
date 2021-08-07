if (self.CavalryLogger) { CavalryLogger.start_js(["jEj8z"]); }

__d("WaitTimeContext",["React"],(function(a,b,c,d,e,f){"use strict";a=b("React");c={waitTimeAreaName:void 0,waitTimeAreaOwner:void 0};d=a.createContext(c);e.exports=d}),null);
__d("LoadingMarker.react",["LoadingMarkerGated","React","WaitTimeContext","cr:1581213","requireCond"],(function(a,b,c,d,e,f){"use strict";var g=b("React");function a(a){return a.children}function c(a){return function(c){var d=g.useContext(b("WaitTimeContext"));if(b("cr:1581213")!=null){return g.jsxs(g.Fragment,{children:[g.jsx(b("cr:1581213"),{hold:!0,description:"LoadingMarker("+((d=d.waitTimeAreaName)!=null?d:"unnamed")+")"}),g.jsx(a,babelHelpers["extends"]({},c))]})}}}d=b("LoadingMarkerGated").component||a;b("cr:1581213")!=null&&(d=c(d));f=d;e.exports=f}),null);
__d("ReactFbPropTypes",["FbtResultBase","warning"],(function(a,b,c,d,e,f){function a(a){var c=function(c,d,e,f,g,h,i){var j=d[e];if(j instanceof b("FbtResultBase"))return null;if(c)return a.isRequired(d,e,f,g,h,i);else return a(d,e,f,g,h,i)},d=c.bind(null,!1);d.isRequired=c.bind(null,!0);return d}f.wrapStringTypeChecker=a}),null);
__d("fbjs/lib/emptyFunction",["emptyFunction"],(function(a,b,c,d,e,f){"use strict";e.exports=b("emptyFunction")}),null);
__d("fbjs/lib/invariant",["invariant"],(function(a,b,c,d,e,f){"use strict";e.exports=b("invariant")}),null);
__d("fbjs/lib/warning",["warning"],(function(a,b,c,d,e,f){"use strict";e.exports=b("warning")}),null);
__d("prop-types/lib/ReactPropTypesSecret",[],(function(a,b,c,d,e,f){"use strict";a="SECRET_DO_NOT_PASS_THIS_OR_YOU_WILL_BE_FIRED";e.exports=a}),null);
__d("prop-types/checkPropTypes",["fbjs/lib/invariant","fbjs/lib/warning","prop-types/lib/ReactPropTypesSecret"],(function(a,b,c,d,e,f){"use strict";var g;function a(a,b,c,d,e){}e.exports=a}),null);
__d("prop-types/prop-types",["fbjs/lib/emptyFunction","fbjs/lib/invariant","fbjs/lib/warning","prop-types/checkPropTypes","prop-types/lib/ReactPropTypesSecret"],(function(a,b,c,d,e,f){var g,h=function(){b("fbjs/lib/invariant")(0,1492)};a=function(){return h};h.isRequired=h;c={array:h,bool:h,func:h,number:h,object:h,string:h,symbol:h,any:h,arrayOf:a,element:h,instanceOf:a,node:h,objectOf:a,oneOf:a,oneOfType:a,shape:a};c.checkPropTypes=b("fbjs/lib/emptyFunction");c.PropTypes=c;e.exports=c}),null);
__d("prop-types",["ReactFbPropTypes","prop-types/prop-types"],(function(a,b,c,d,e,f){e.exports=b("prop-types/prop-types")}),null);
__d("XUISpinner.react",["cx","fbt","BrowserSupport","LoadingMarker.react","React","UserAgent","joinClasses","prop-types"],(function(a,b,c,d,e,f,g,h){var i=b("React"),j=b("BrowserSupport").hasCSSAnimations()&&!(b("UserAgent").isEngine("Trident < 6")||b("UserAgent").isEngine("Gecko < 39")||b("UserAgent").isBrowser("Safari < 6"));a=function(a){babelHelpers.inheritsLoose(c,a);function c(){return a.apply(this,arguments)||this}var d=c.prototype;d.render=function(){var a=this.props,c=a.showOnAsync,d=a.background,e=a.paused;a=babelHelpers.objectWithoutPropertiesLoose(a,["showOnAsync","background","paused"]);d="img _55ym"+(this.props.size=="small"?" _55yn":"")+(this.props.size=="large"?" _55yq":"")+(d=="light"?" _55yo":"")+(d=="dark"?" _55yp":"")+(c?" _5tqs":"")+(j?"":" _5d9-")+(j&&e?" _2y32":"");return i.jsx(b("LoadingMarker.react"),{children:i.jsx("span",babelHelpers["extends"]({},a,{className:b("joinClasses")(this.props.className,d),role:"progressbar","aria-valuetext":h._("\u0110ang t\u1ea3i..."),"aria-busy":"true","aria-valuemin":"0","aria-valuemax":"100"}))})};return c}(i.Component);e.exports=a;a.propTypes={paused:b("prop-types").bool,showOnAsync:b("prop-types").bool,size:b("prop-types").oneOf(["small","large"]),background:b("prop-types").oneOf(["light","dark"])};a.defaultProps={showOnAsync:!1,size:"small",background:"light"}}),null);
__d("WarningFilter",["CoreWarningGK"],(function(a,b,c,d,e,f){var g=21;b=a;c=function(){return{}};function a(a){return{finalFormat:a,forceDialogImmediately:!1,monitorEvent:null,monitorListVersion:g,monitorSampleRate:1,suppressCompletely:!1,suppressDialog_LEGACY:!0}}e.exports={prepareWarning:b,getReactWarnings:c}}),null);
__d("warningBlue",["Bootloader","SiteData","WarningFilter","cr:983844","requireCond"],(function(a,b,c,d,e,f){function a(a,b){}b=a;c=b;e.exports=c}),null);
__d("keyMirrorRecursive",["invariant","isTruthy"],(function(a,b,c,d,e,f,g){"use strict";a=function a(c,d){var e={};h(c)||g(0,580);for(var f in c){if(!Object.prototype.hasOwnProperty.call(c,f))continue;var i=c[f],j=b("isTruthy")(d)?d+"."+f:f;h(i)?i=a(i,j):i=j;e[f]=i}return e};function h(a){return a instanceof Object&&!Array.isArray(a)}c=a;e.exports=c}),null);
__d("PagePluginEvents",["ImmutableObject","keyMirrorRecursive"],(function(a,b,c,d,e,f){"use strict";a=new(b("ImmutableObject"))(b("keyMirrorRecursive")({page_plugin:{tab:{configured:"",click:"",render:""},messages:{send:"",logged_out:"",invalid_height:""}}}));c=a;e.exports=c}),null);
__d("XPagePluginLoggingController",["XController"],(function(a,b,c,d,e,f){e.exports=b("XController").create("/platform/plugin/page/logging/",{})}),null);
__d("PagePluginLogger",["AsyncRequest","XPagePluginLoggingController"],(function(a,b,c,d,e,f){"use strict";a=function(){function a(a,b){this.$1=a,this.$2=b}var c=a.prototype;c.notify=function(a,c,d){var e=b("XPagePluginLoggingController").getURIBuilder().getURI();new(b("AsyncRequest"))().setURI(e).setMethod("POST").setData({event_name:a,page_id:this.$1,tab:c,data:Object.assign(d?d:{},{refererURL:this.$2})}).send()};return a}();e.exports=a}),null);
__d("GridItem.react",["cx","React","joinClasses"],(function(a,b,c,d,e,f,g){"use strict";e.exports=a;var h=b("React");function a(a){var c=a.alignv,d=a.alignh,e=a.className;a=babelHelpers.objectWithoutPropertiesLoose(a,["alignv","alignh","className"]);return h.jsx("td",babelHelpers["extends"]({},a,{className:b("joinClasses")(e,"_51m-"+(c==="top"?" vTop":"")+(c==="middle"?" vMid":"")+(c==="bottom"?" vBot":"")+(d==="left"?" hLeft":"")+(d==="center"?" hCent":"")+(d==="right"?" hRght":""))}))}}),null);
__d("Grid.react",["cx","GridItem.react","React","joinClasses"],(function(a,b,c,d,e,f,g){"use strict";var h=b("React");a=function(a){babelHelpers.inheritsLoose(c,a);function c(){return a.apply(this,arguments)||this}var d=c.prototype;d.render=function(){var a=this.props,d=a.alignh,e=a.alignv,f=a.children,g=a.cols,i=a.fixed,j=a.spacing,k=h.Children.count(f),l=[],m=[],n=0;h.Children.forEach(f,function(a,f){if(a===null||a===void 0)return;var o=a.type===c.GridItem;n+=o?Math.max(a.props.colSpan||0,1):1;var p=n===g?"_51mw":"";o=o?h.cloneElement(a,{key:a.key||f,alignh:a.props.alignh||d,alignv:a.props.alignv||e,className:b("joinClasses")(a.props.className,j,p)}):h.jsx(b("GridItem.react"),{alignh:d,alignv:e,className:b("joinClasses")(j,p),children:a},a.key||f);m.push(o);if(n%g===0||f+1===k){if(i===!0&&n<g){for(var p=n;p<g;p++)m.push(h.jsx(b("GridItem.react"),{},f+p));n=g}l.push(h.jsx("tr",{className:"_51mx",children:m},f));m=[];n=0}});return h.jsx("table",babelHelpers["extends"]({},this.props,{className:b("joinClasses")(this.props.className,"uiGrid _51mz"+(i===!0?" _5f0n":"")),cellSpacing:"0",cellPadding:"0",children:h.jsx("tbody",{children:l})}))};return c}(h.Component);e.exports=a;a.GridItem=b("GridItem.react")}),null);
__d("isKeyActivation",["Keys"],(function(a,b,c,d,e,f){"use strict";e.exports=a;function a(a){var c=0,d=a.charCode;a=a.keyCode;d!=null&&d!==0?c=d:a!=null&&a!==0&&(c=a);return[b("Keys").RETURN,b("Keys").SPACE].includes(c)}}),null);
__d("KeyActivationToClickHOC.react",["React","isKeyActivation"],(function(a,b,c,d,e,f){"use strict";e.exports=a;var g=b("React");function a(a){var c,d;return d=c=function(c){babelHelpers.inheritsLoose(d,c);function d(){var a;for(var d=arguments.length,e=new Array(d),f=0;f<d;f++)e[f]=arguments[f];a=c.call.apply(c,[this].concat(e))||this;a.$2=function(c){b("isKeyActivation")(c)&&(c.preventDefault(),c.stopPropagation(),a.$1&&a.$1.click())};a.$3=function(b){a.$1=b};a.$1=null;return a}var e=d.prototype;e.render=function(){return g.jsx(a,babelHelpers["extends"]({keyActivationToClickEvent:this.$2,keyActivationToClickRef:this.$3},this.props))};return d}(g.Component),c.displayName="KeyActivationToClickHOC",d}}),null);
__d("ShimButton.react",["KeyActivationToClickHOC.react","React","emptyFunction","killswitch","prop-types"],(function(a,b,c,d,e,f){var g=b("React");a=function(a){"use strict";babelHelpers.inheritsLoose(c,a);function c(){var b,c;for(var d=arguments.length,e=new Array(d),f=0;f<d;f++)e[f]=arguments[f];return(b=c=a.call.apply(a,[this].concat(e))||this,c.$1=function(a){c.props.keyActivationToClickRef(a),c.props.onRef(a)},b)||babelHelpers.assertThisInitialized(c)}var d=c.prototype;d.render=function(){var a=this.props,c=a.children,d=a.form,e=a.inline,f=a.keyActivationToClickEvent;a.keyActivationToClickRef;a.onRef;var h=a.pressed;a=babelHelpers.objectWithoutPropertiesLoose(a,["children","form","inline","keyActivationToClickEvent","keyActivationToClickRef","onRef","pressed"]);e=e?"span":"div";d==="link"&&(e="a");f=(d={},d[b("killswitch")("SHIM_BUTTON_USE_ONKEYDOWN_INSTEAD_OF_ONKEYPRESS")?"onKeyPress":"onKeyDown"]=f,d);return g.jsx(e,babelHelpers["extends"]({},a,{"aria-pressed":h,ref:this.$1,role:"button"},f,{children:c}))};return c}(g.Component);a.defaultProps={form:"none",inline:!1,keyActivationToClickEvent:c=b("emptyFunction"),keyActivationToClickRef:c,onClick:c,onRef:c,tabIndex:"0"};a.propTypes={children:(d=b("prop-types")).any,form:d.oneOf(["none","link"]),inline:d.bool,tabIndex:d.oneOf(["-1","0",-1,0]),onClick:d.func,onRef:d.func};e.exports=b("KeyActivationToClickHOC.react")(a)}),null);
__d("PluginTabItem.react",["cx","React","ShimButton.react"],(function(a,b,c,d,e,f,g){"use strict";var h=b("React");a=function(a){babelHelpers.inheritsLoose(c,a);function c(){return a.apply(this,arguments)||this}var d=c.prototype;d.render=function(){var a=this,c=this.props.tab.key;return h.jsx(b("ShimButton.react"),{className:"_eg_"+(this.props.activeTabKey===c?" _eh2":""),onClick:function(){return a.props.onSelected(c)},children:h.jsx("div",{className:"_eh3",children:this.props.tab.title})})};return c}(h.Component);e.exports=a}),null);
__d("PluginTabControl.react",["cx","Grid.react","PluginTabItem.react","React"],(function(a,b,c,d,e,f,g){"use strict";var h=b("Grid.react").GridItem,i=b("React");a=function(a){babelHelpers.inheritsLoose(c,a);function c(){return a.apply(this,arguments)||this}var d=c.prototype;d.render=function(){var a=this;return i.jsx(b("Grid.react"),{className:"_4v3l",cols:this.props.tabs.length,fixed:!0,children:this.props.tabs.map(function(c){return i.jsx(h,{className:"_4v3m",children:i.jsx(b("PluginTabItem.react"),{activeTabKey:a.props.activeTabKey,tab:c,onSelected:a.props.onTabSelected})},c.key)})})};return c}(i.Component);e.exports=a}),null);
__d("XPluginTabAsyncRendererController",["XController"],(function(a,b,c,d,e,f){e.exports=b("XController").create("/platform/plugin/tab/renderer/",{key:{type:"String",required:!0},config_json:{type:"String",required:!0},cursor:{type:"String"}})}),null);
__d("PluginTabFetcher.react",["csx","cx","AsyncRequest","DOM","DOMQuery","Event","React","ReactDOM","XPluginTabAsyncRendererController","XUISpinner.react"],(function(a,b,c,d,e,f,g,h){"use strict";var i=b("React");a=function(a){babelHelpers.inheritsLoose(c,a);function c(b,c){b=a.call(this,b,c)||this;b.state={isFetchingComponent:!1,asyncContentLoaded:!1};b.hasMoreContent=!0;b.isLoadingContent=!1;return b}var d=c.prototype;d.UNSAFE_componentWillReceiveProps=function(a){if(a.isActive===this.props.isActive||!a.isActive)return;this.$1()};d.componentDidMount=function(){this.props.isActive&&this.$1()};d.$2=function(){var a=this.refs.container,b=a.clientHeight,c=a.children[0].clientHeight;a=a.scrollTop;var d=100;!this.isLoadingContent&&this.hasMoreContent&&a+b+d>c&&(this.isLoadingContent=!0,this.$3())};d.$3=function(){var a=this,c=this.props.tab.configData;c=b("XPluginTabAsyncRendererController").getURIBuilder().setString("key",this.props.tab.key).setString("config_json",JSON.stringify(c)).setString("cursor",this.cursor).getURI();new(b("AsyncRequest"))().setURI(c).setMethod("GET").setReadOnly(!0).setHandler(function(c){a.setState({isFetchingComponent:!1,asyncContentLoaded:!0},function(){var d=c.payload;a.isLoadingContent=!1;if(a.hasMoreContent){var e=b("DOMQuery").scry(a.refs.container,"._1_lk");e=e[e.length-1];b("DOM").appendContent(e,d.content.markup)}})}).send()};d.$4=function(){var a=this;this.scrollListener=b("Event").listen(this.refs.container,"scroll",function(){a.scrollTimeout&&(clearTimeout(a.scrollTimeout),a.scrollTimeout=null),a.scrollTimeout=setTimeout(function(){return a.$2()},250)});var c=b("DOMQuery").find(this.refs.container,"._10b6");b("Event").listen(c,"noMoreContent",function(){a.hasMoreContent=!1,a.scrollListener.remove()});b("Event").listen(c,"setCursor",function(b){a.cursor=b.getData()})};d.$1=function(){var a=this;if(!this.state.asyncContentLoaded&&!this.state.isFetchingComponent){this.setState({isFetchingComponent:!0});var c=b("XPluginTabAsyncRendererController").getURIBuilder().setString("key",this.props.tab.key).setString("config_json",JSON.stringify(this.props.tab.configData)).getURI();new(b("AsyncRequest"))().setURI(c).setMethod("GET").setReadOnly(!0).setHandler(function(c){a.setState({isFetchingComponent:!1,asyncContentLoaded:!0},function(){var d=c.payload;b("DOM").setContent(b("ReactDOM").findDOMNode(a.refs.container),d.content.markup);a.props.tab.canLoadMore&&(a.cursor="",a.$4())})}).send()}};d.render=function(){return i.jsxs("div",{className:this.props.isActive?"":"hidden_elem",children:[i.jsx("div",{style:{maxHeight:this.props.tabHeight+"px"},className:"_10b4"+(this.state.isFetchingComponent?" hidden_elem":""),ref:"container"}),i.jsx("div",{className:"_10b5"+(this.state.isFetchingComponent?"":" hidden_elem"),children:i.jsx(b("XUISpinner.react"),{className:"_4g7o",size:"large"})})]})};return c}(i.Component);e.exports=a}),null);
__d("PluginTabContainer.react",["cx","PluginTabControl.react","PluginTabFetcher.react","React"],(function(a,b,c,d,e,f,g){"use strict";var h=b("React");a=function(a){babelHelpers.inheritsLoose(c,a);function c(b,c){b=a.call(this,b,c)||this;b.state={activeTabKey:b.props.activeTabKey};return b}var d=c.prototype;d.componentDidMount=function(){var a=this;this.props.tabs.map(function(b){return a.onTabLoaded(b)})};d.onTabLoaded=function(a){};d.onTabSelected=function(a){this.setState({activeTabKey:a})};d.render=function(){var a=this,c=this.props.tabs.length;return c===0?null:h.jsxs("div",{children:[c>1?h.jsx(b("PluginTabControl.react"),{tabs:this.props.tabs,activeTabKey:this.state.activeTabKey,onTabSelected:function(b){return a.onTabSelected(b)}}):null,h.jsx("div",{className:"_2hkj",children:this.props.tabs.map(function(c){return h.jsx(b("PluginTabFetcher.react"),{tab:c,isActive:c.key===a.state.activeTabKey,tabHeight:a.props.tabHeight},c.key)})})]})};return c}(h.Component);e.exports=a}),null);
__d("PagePluginTabContainer.react",["PagePluginEvents","PagePluginLogger","PluginTabContainer.react"],(function(a,b,c,d,e,f){"use strict";a=function(a){babelHelpers.inheritsLoose(c,a);function c(c,d){d=a.call(this,c,d)||this;d.$PagePluginTabContainer1=new(b("PagePluginLogger"))(c.pageID,c.refererURI);return d}var d=c.prototype;d.onTabLoaded=function(a){this.$PagePluginTabContainer1.notify(b("PagePluginEvents").page_plugin.tab.configured,a.key)};d.onTabSelected=function(c){this.$PagePluginTabContainer1.notify(b("PagePluginEvents").page_plugin.tab.click,c),a.prototype.onTabSelected.call(this,c)};return c}(b("PluginTabContainer.react"));e.exports=a}),null);