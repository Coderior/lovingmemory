# Self hosted memorial and funeral arrangements site
I originally built this as a central place people could go to find out about funeral arrangements for my mom. I have open sourced it in the hope I hope someone else in a similar situation is able to find it useful.

* [demo.lovingmemory.link](https://demo.lovingmemory.link)
* [lynhunt.lovingmemory.link](https://lynhunt.lovingmemory.link)

If you need help getting this set up feel free to reach out on discord - https://discord.gg/XG9vyq3M9N

## Build Setup

```bash
# install dependencies
$ yarn install

# generate resized and normalised images
$ node index.js

# serve with hot reload at localhost:3000
$ yarn dev

# generate static project
$ yarn generate
```

This repository allows you to have a beautiful and simple site that requires no hosting account (it uses Github pages), just a custom domain. It allows you to put details of the funeral arrangements, charity donations links and comes built ready for mobile.

![LovingMemory Desktop animation](https://i.imgur.com/uaUOGdn.gif)
![LovingMemory Mobile animation](https://i.imgur.com/Eu9WsP2.gif)

## Building your own
To build your own, fork this repository, then make changes to:
* `nuxt.config.js` - Change the 2 variables at the top with your loved ones name and their dates from and to.
* `assets/frontimage.jpg` - Replace with your own image, this is the image that shows on the front page, image should be 244px by 292px.
* `pages/*` - Change the details in the pages to match what you want them to say.
* `static/CNAME` - Replace with your own custom domain
* `layouts/default.vue` - You can change the scss here, if you want to change the main colours used they are near the top of this file.
* `assets/images/` - Drop all the images you want to show in the gallery in this folder - As part of the github action it will rename the images that have problematic names, resize images to a max width of 1800px (more than big enough for viewing on the web), and will create thumbnail versions to ensure the gallery is optimised. The original files in the `images` directory are not touched.

## Putting Live
* Make sure you have GitHub actions running
* Make sure you have set `static/CNAME` to what it needs to be
* On your nameservers point a CNAME from your custom domain to `<username>.github.io`
* Once the Github action runs it should all be setup, but if not, go to your repos `Settings / Options`, scroll down to `GitHub Pages` and for source select `Branch: gh-pages`

Now, any time you make a change to the source and push the change, GitHub actions should pick up the change and run a workflow that generates the static files, fixes image names and updates the gh-pages branch.
