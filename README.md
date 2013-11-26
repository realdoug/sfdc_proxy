Salesforce Proxy
==========

Salesforce Proxy is a gem that helps you emulate Salesforce's Ajax Proxy in your Rails or Rack applications.  In laymans terms this means you can call to Salesforce's REST APIs from javascript, which is particularly useful if you're using a javascript framework like EmberJS, AngularJS or Backbone.

The application is a full 10 lines, and amonuts to a simple sinatra application that can be embedded in almost any ruby context.  It is influenced heavily by [app.js](https://github.com/developerforce/MobilePack-AngularJS/blob/master/samples/AngularHerokuBootstrapNode/app.js "Salesforce Proxy") from the Salesforce's AngularJS Mobile Pack.

Usage
========
There are a couple ways to use the proxy:

*  Mounted in your Rails app
*  Embedded in a Rack or Ruby application
