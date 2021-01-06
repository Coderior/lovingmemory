<template>
  <div class="container">
    <div class="section links">
      <Nav />
    </div>
    <div class="section tribute">
      <h1 class="title">In Loving Memory</h1>
      <img src="~/assets/lyn.jpg" alt="Lyn Hunt" />
      <div class="subtitle"><div class="name">Lyn Hunt</div>July 29th 1958 - Jan 4th 2021</div>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style lang="scss">
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  @media screen and (max-width: 800px) {
    flex-direction: column-reverse;
  }
}
.icon {
  margin-right: 10px;
  color: #ab085a;
  font-size: 22px;
}
.section {
  flex: 0 0 50%;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  &.tribute {
    background: #2b3143;
    justify-content: space-between;
    img {
      -webkit-filter: grayscale(100%); /* Safari 6.0 - 9.0 */
      filter: grayscale(100%);
      width: 80%;
      max-width: 260px;
      border: 8px solid #fff;
      box-shadow: 0 0 10px 3px rgba(0, 0, 0, 0.6);
    }
  }
  @media screen and (max-width: 800px) {
    flex: 0 0 100%;
    width: 100%;
  }
}
ul {
  list-style: none;
  font-weight: 700;
  text-align: left;
  font-size: 16px;
  li {
  }
  a {
    color: #111;
    text-decoration: none;
    padding: 10px;
    display: flex;
    align-items: center;
  }
}
.name {
  font-size: 40px;
  color: #fff;
  font-weight: 300;
}
.title {
  font-family: 'Pinyon Script', cursive;
  display: block;
  font-weight: 300;
  font-size: 40px;
  color: #35495e;
  letter-spacing: 1px;
  margin: 40px 0;
  color: #fff;
}

.subtitle {
  font-weight: 300;
  font-size: 14px;
  color: #adb4c7;
  margin: 40px 0;
}
.links {
  background-image: url('~assets/corner.svg');
  background-position: bottom 20px left 20px;
  background-repeat: no-repeat;
  background-size: 200px;
}

</style>
