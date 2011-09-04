# Compass-UI

Compass-UI is a jQuery UI theme builder for the [compass][compass] CSS framework. 

I recently worked on two projects that required use of the [jQuery UI][jqueryui]. However, designing a new theme from Themeroller or taking apart the generated CSS by hand proved to be tedious at best. The default themes did not fit our needs. So, I thought it might be useful to build a tool that could make generating jQuery UI themes easier. Compass-UI is an attempt to build that tool. 

**This is a work-in-progress**.

## Installation and Usage

`(sudo) gem install compass-ui`

or, in your Gemfile: `gem compass-ui`

Then add `require 'compass-ui'` to your Compass config file. 

To use one of the existing themes import it:

```sass
@import "compass-ui/theme/absolution";
```

Then, include the theme when needed:

```sass
@include absolution-theme;
```

## Existing Themes

* jQuery UI - Base Theme (import with `@import "compass-ui/theme/jquery-ui-base"`).

* Absolution Theme (import with `@import "compass-ui/theme/absolution"`). 

    I've ported [Michaël Vanderheeren's][mvan] wonderful [Absolution Theme](https://github.com/michaelvanderheeren/Absolution) over to Compass/Sass as a proof-of-concept. However, please follow him if you'd like to keep up with his improvements on that theme. 

* Smoothness Theme - the jQuery UI plain gem in just a few lines. 

* Dot Luv Theme - the gaudy Dot Luv theme as a proof-of-concept, by just changing default variables and adding background images. 

## Creating a New Theme 

To create a new jQuery UI theme, simply create a new Sass file and import compass-ui:

```sass
@import "compass-ui";
```

Then, in your own project, override any of the variables found in the jquery-ui-base file with your own variables. 

**Please see the proof-of-concept Absolution Theme for a detailed example.** Even though the Absolution Theme has additional CSS, in many cases, I think just overriding variables found in the jquery-ui-base would be sufficient to create a brand-new theme. See the Smoothness and Dot Luv themes in the demos for examples of overriding  a few variables to create a new theme.  

After you've imported it into your project, you'll need to @include the default theme's mixin. 

Place this after your variable overrides. 

```sass
@include jquery-ui-base-theme;
```

See the demos for a more detailed example. 

## Attribution
Absolution Theme, Copyright 2010, [Michael Vanderheeren][mvan]

jQuery UI CSS Framework, Copyright 2010, [jQuery UI][jqueryui]<br>
[Dual licensed][jqueryui-license] under the MIT or GPL Version 2 licenses.<br>
[http://docs.jquery.com/UI/Theming/API](http://docs.jquery.com/UI/Theming/API)<br>

## License

Copyright (c) 2011 Patrick A. Ward<br>
All Rights Reserved.<br>
Released under a [slightly modified MIT License][license]. 

[license]: http://github.com/patrickward/compass-ui/tree/master/LICENSE.md
[compass]: http://compass-style.org
[jqueryui]: http://jqueryui.com
[jqueryui-license]: http://jquery.org/license
[mvan]: http://www.michaelvanderheeren.be/

