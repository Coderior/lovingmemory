# Self hosted memorial and funeral arrangements site

## Build Setup

```bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn dev

# generate static project
$ yarn generate
```

This repository allows you to have a beautiful and simple site that requires no hosting account (it uses Github pages), just a custom domain. It allows you to put details of the funeral arrangements, charity donations links and comes built ready for mobile.

![LovingMemory Desktop animation](https://i.imgur.com/uaUOGdn.gif)
![LovingMemory Mobile animation](https://i.imgur.com/Eu9WsP2.gif)

## Building your own
To build your own clone this repository, then make changes to:
* `nuxt.config.js` - This has the page title, and meta details.
* `assets/frontimage.jpg` - Replace with your own image, this is the image that shows on the front page.
* `pages/*` - Change the details in the pages to match what you want them to say.
* `static/CNAME` - Replace with your own custom domain

## Putting Live
* Go to your repos `Settings / Options`, scroll down to `GitHub Pages` and for source select `Branch: gh-pages`
* The custom domain should be pulled in from the CNAME file
* On you nameservers point a CNAME from your custom domain to `<username>.github.io`

Now, any time you make a change to the source and push the change, GitHub actions should pick up the change and run a workflow that generates the static files and updates the gh-pages branch.
