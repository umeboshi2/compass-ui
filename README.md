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

## Installing Theme Icons 

Icon sets and backgrounds for the available themes can be copied to your project using the compass-ui executable. 

      compass-ui help [TASK]                   # Describe available tasks or one specific task
      compass-ui install THEME [-d DIRECTORY]  # Installs the icons from one of the available themes.
      compass-ui list                          # Lists the available icon themes.

By default, they will be copied to an 'images' directory in your current working directory. You can, however, pass a directory option to override the default. 

E.g. the following command will install the smoothness icons to the 'app/assets/images/smoothness' directory in your current working directory. 

```bash
$ compass-ui install smoothness -d "app/assets/images"
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

## jQuery UI Base Variables 

**A note on background types:**

> The *-background-type can currently be set as 'default' or 'image'. If set to 'default', it will use whatever you set the background to as-is. If set to 'image', it will set the `background-color` to the given color and use the compass `background-image` function to create a background-image. For example, when using linear-gradient, you'll want to use the 'image' type, but when explicity setting a background image in the background, you'll want to use the 'default' type. 

Examples: 

```sass
// Using the default background type to explicity set a background
$ui-header-background: #cccccc image-url("#{$ui-images-url}ui-bg_highlight-soft_75_cccccc_1x100.png") 50% 50% repeat-x;
$ui-header-background-type: default;

// Using the image background type to create a linear gradient 

$ui-default-background-color: #e6e6e6;
$ui-default-background: linear-gradient(#ededed,#f1f1f1);
$ui-default-background-type: image;
```

For convenience, here are the variables that can be overridden to create a new theme: 

```sass
// Default Radius
$ui-border-radius: 5px;

// Default Fonts
$ui-font-family: Verdana, Arial, sans-serif;

$ui-fixed-font-family: "andale mono", "lucida console", monospace;

$ui-font-size: 1.1em;

$ui-widget-font-size: 1em;

$ui-form-font-size: 1em;

$ui-font-color: #222222;

// ------------------------------------------
// Icon Images 
// ------------------------------------------

// Location of the icons and other theme related images. Note that this 
// is relative to the images directory as defined in the compass config.rb file. 
$ui-images-url: "jquery-ui-base/";

// Individual icon images that relate to each of the jQuery UI states 
$ui-icons: "ui-icons_222222_256x240.png";
$ui-icons-content: $ui-icons;
$ui-icons-header: $ui-icons;
$ui-icons-default: "ui-icons_888888_256x240.png";
$ui-icons-hover: "ui-icons_454545_256x240.png";
$ui-icons-focus: $ui-icons-hover;
$ui-icons-active: "ui-icons_454545_256x240.png";
$ui-icons-highlight: "ui-icons_2e83ff_256x240.png";
$ui-icons-error: "ui-icons_cd0a0a_256x240.png";

// ------------------------------------------
// Color Scheme
// ------------------------------------------

// Content
$ui-content-border-width: 1px;
$ui-content-border-style: solid;
$ui-content-border-color: #aaaaaa;
$ui-content-color: $ui-font-color;
$ui-content-background-color: $ui-white;
$ui-content-background: $ui-white;
$ui-content-background-type: default;
$ui-content-link-color: $ui-content-color;

// Header
$ui-header-border-width: 1px;
$ui-header-border-style: solid;
$ui-header-border-color: #aaaaaa;
$ui-header-color: $ui-font-color;
$ui-header-link-color: $ui-header-color;
$ui-header-font-weight: bold;
$ui-header-background-color: #cccccc;
$ui-header-background: linear-gradient(#e2e2e2,#cccccc);
$ui-header-background-type: image;

// State-Default
$ui-default-border-width: 1px;
$ui-default-border-style: solid;
$ui-default-border-color: #d3d3d3;
$ui-default-color: #555555;
$ui-default-link-color: $ui-default-color;
$ui-default-font-weight: normal;
$ui-default-background-color: #e6e6e6;
$ui-default-background: linear-gradient(#ededed,#f1f1f1);
$ui-default-background-type: image;

// State-Hover
$ui-hover-border-width: 1px;
$ui-hover-border-style: solid;
$ui-hover-border-color: #999999;
$ui-hover-color: #212121;
$ui-hover-link-color: $ui-hover-color;
$ui-hover-font-weight: normal;
$ui-hover-background-color: #dadada;
$ui-hover-background: linear-gradient(#e4e4e4,#eaeaea);
$ui-hover-background-type: image;

// State-Focus
$ui-focus-border-width: $ui-hover-border-width;
$ui-focus-border-style: $ui-hover-border-style;
$ui-focus-border-color: $ui-hover-border-color;
$ui-focus-color: $ui-hover-color;
$ui-focus-link-color: $ui-hover-color;
$ui-focus-font-weight: $ui-hover-font-weight;
$ui-focus-background-color: $ui-hover-background-color;
$ui-focus-background: $ui-hover-background;
$ui-focus-background-type: $ui-hover-background-type;

// State-Active
$ui-active-border-width: 1px;
$ui-active-border-style: solid;
$ui-active-border-color: #aaaaaa;
$ui-active-color: #212121;
$ui-active-link-color: $ui-active-color;
$ui-active-font-weight: normal;
$ui-active-background-color: #ffffff;
$ui-active-background: linear-gradient(#fefefe,#ffffff);
$ui-active-background-type: image;

// State-Highlight
$ui-highlight-border-width: 1px;
$ui-highlight-border-style: solid;
$ui-highlight-border-color: #fcefa1;
$ui-highlight-color: #363636;
$ui-highlight-link-color: $ui-highlight-color;
$ui-highlight-background-color: #fbf9ee;
$ui-highlight-background: linear-gradient(#fcfaf1, #fbfaf3);
$ui-highlight-background-type: image;

// State-Error
$ui-error-border-width: 1px;
$ui-error-border-style: solid;
$ui-error-border-color: #cd0a0a;
$ui-error-color: #cd0a0a;
$ui-error-link-color: $ui-default-color;
$ui-error-background-color: #fef1ec;
$ui-error-background: linear-gradient(#fef6f3, #fef8f6);
$ui-error-background-type: image;

// State-Primary
$ui-priority-font-weight: bold;

// Priority-Secondary
$ui-priority-secondary-opacity: .7;
$ui-priority-secondary-font-weight: normal;

// State-Disabled
$ui-disabled-opacity: .35;

// Overlay
$ui-overlay-opacity: .3;
$ui-overlay-background-color: #aaaaaa;
$ui-overlay-background: $ui-overlay-background-color;
$ui-overlay-background-type: default;

// Shadow
$ui-shadow-opacity: .3;
$ui-shadow-background-color: #aaaaaa;
$ui-shadow-background: $ui-shadow-background-color;
$ui-shadow-background-type: default;
```

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

