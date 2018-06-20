
# ceevee

ceevee is a Jekyll theme for a personal website. It has a blog, a projects page and a timeline that can be used for a CV.

## Installation

If you haven't already, set up a new Jekyll site:
```
gem install bundler jekyll
jekyll new my-awesome-site
cd my-awesome-site
bundle exec jekyll serve
# => Now browse to http://localhost:4000 to see your site
```

Add the following line to your Jekyll site's `Gemfile`:

```ruby
gem "ceevee"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: ceevee
```

Then execute:
```
$ bundle install
```


## Usage

### Configuration in `_config.yml`

You can add the following properties in `_config.yml` to customize the sidebar and page header.

```
# Author will be shown in sidebar.
author: "Your name"

# Author's title will be shown in sidebar below name.
author_title: "Your title"

# A path that points to the author's profile picture.
author_picture: /assets/profile-picture.jpg

# A list of pages that get linked from the header.
header_pages:
 - index.md
 - projects.md
 - cv.html

# A list of sections that will be shown in sidebar.
sidebar_sections:
  - title: "About"
    text: "I am a photographer. I like to go out into nature."
  - title: "Contact"
    text: "Just write me an email."
```

### Layouts

#### home

The `home` layout shows a preview list of all posts that have their layout set to `post`.

#### portfolio

The `portfolio` layout shows a preview list of all posts that have their layout set to `project`.

#### timeline

When using the `timeline` layout, you have to fill in the content into the page it self. Example:

```
---
layout: timeline
title: CV
permalink: /cv/
---

<h1>Experience</h1>

<div class="section">
  <div class="bubble"></div>
  <div class="date">04/2009 - 10/2015</div>
  <h2>Senior Super Professional</h2>
  <h3>Some Company Name | Berlin (DE)</h3>
  <a class="link" target="_blank" href="http://www.example.com">http://www.example.com</a>

  <ul class="description">
    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
  </ul>

  <div class="tags">
    <span>Tag 1</span>
    <span>Tag 2</span>
    <span>Tag 3</span>
  </div>
</div>

<div class="section">
  <div class="bubble"></div>
  <div class="crossline"></div>
  <div class="date">04/2009 - 10/2015</div>
  <h2>Senior Super Professional</h2>
  <h3>Some Company Name | Berlin (DE)</h3>
  <a class="link" target="_blank" href="http://www.example.com">http://www.example.com</a>

  <ul class="description">
    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
  </ul>

  <div class="tags">
    <span>Tag 1</span>
    <span>Tag 2</span>
    <span>Tag 3</span>
  </div>
</div>
```


### Posts

Posts should have at least the following front matter:
```
---
layout: post
title: "Lorem ipsum"
tagline: "Lorem ipsum and a bit more"
image: "/assets/img1.jpg"
---
```

The value for `layout` can be `post`or `project`.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mschaeffner/ceevee. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `ceevee.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
