<template>
  <div class="container">
    <div class="section links">
      <Nav />
    </div>
    <div class="section details">
      <h1 class="title">Gallery</h1>
      <gallery>
        <galleryImage src="~/assets/gallery/lyn1.jpeg" />
        <galleryImage src="~/assets/gallery/lyn2.jpeg" />
      </gallery>
    </div>
  </div>
</template>

<script>
import Gallery from 'nuxt-gallery/src/Gallery.vue'
import GalleryImage from 'nuxt-gallery/src/GalleryImage.vue'

export default {
  components: {
    Gallery,
    GalleryImage
  }
}
</script>

<style lang="scss">
</style>
