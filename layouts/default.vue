<template>
  <div>
    <Nuxt />
  </div>
</template>

<style lang="scss">
$highlight: #c1309a;
$highlightmuted: #c1309ad9;
html {
  font-family: 'Lato', sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
}

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
    overflow: auto;
    height: 100vh;
    img {
      //-webkit-filter: grayscale(100%); /* Safari 6.0 - 9.0 */
      //filter: grayscale(100%);
      width: 80%;
      max-width: 260px;
      border: 8px solid #fff;
      box-shadow: 0 0 10px 3px rgba(0, 0, 0, 0.6);
    }
  }
  &.details {
    background: #2b3143;
    color: white;
    align-items: flex-start;
    text-align: left;
    padding: 40px;
    justify-content: normal;
    overflow: auto;
    height: 100vh;
    p {
      margin: 10px 0;
      font-weight: 300;
      &.highlight {
        background: $highlightmuted;
        padding: 20px;
        font-weight: 400;
      }
    }
    .fa-li {
      color: $highlight;
    }
    ul {
      font-weight: 300;
      margin: 0 0 0 25px;
      padding: 0;
      li {
        margin: 10px 0;
      }
    }
    .title {
      margin: 0px 0 25px;
    }
    h2 {
      margin: 40px 0 5px;
    }
  }
  .button {
    padding: 15px 30px;
    border-radius: 4px;
    font-size: 18px;
    background: $highlight;
    text-decoration: none;
    color: #fff;
    margin: 10px 0;
    box-shadow: 0 0 5px 2px rgba(0,0,0,0.3);
    border-top: 1px solid rgba(255,255,255,0.2);
  }
  @media screen and (max-width: 800px) {
    flex: 0 0 100%;
    width: 100%;
    min-height: auto;
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
    color: $highlight;
    text-decoration: none;
    padding: 10px 0;
    display: flex;
    align-items: center;
    &.nuxt-link-exact-active {
      color: #111;
      .icon {
        color: #111;
      }

    }
  }
}
.menu {
  display: flex;
  flex-direction: column;
  small {
    color: #aeafb3;
    font-weight: 400;
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
  font-size: 50px;
  color: #35495e;
  letter-spacing: 1px;
  margin: 40px 0;
  color: #fff;
  @media screen and (max-width: 800px) {
    font-size: 40px;
  }
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
  @media screen and (max-width: 800px) {
    padding: 50px 40px 80px;
    background-position: bottom 2px left 2px;
    background-size: 150px;
  }
  ul {
    padding: 0;
  }
}


</style>
