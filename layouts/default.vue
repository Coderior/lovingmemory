<template>
  <div>
    <Nuxt />
  </div>
</template>

<style lang="scss">
$highlight: #f41b8e;
$highlightmuted: #f41b8ed9;
$background: #2b3143;

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

.fa-ulist {
    margin: 10px 0px!important;
    list-style-type: none;
    position: relative;
}
.fa-icon::before {
    display: inline-block;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
}

.fa-list::before {
    font: var(--fa-font-solid);
    content: "\f105";
    color: $highlight;
    margin-right: 10px;
    font-size: 12px;
    position: absolute;
    top: 0%;
    left: 5px;
    height: 100%;
    display: flex;
    align-items: center;
}

.fa-list {
    margin: 0!important;
    padding: 6px 0;
    padding-left: 23px;
    min-height: 28px;
    position: relative;
}


.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  @media screen and (max-width: 800px) {
    flex-direction: column;
    justify-content: flex-start;
  }
}
.icon {
  margin-right: 10px;
  font-size: 22px;
  height:28px;
  width: 27.5px;
}
.section {
  flex: 0 0 50%;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  @media screen and (max-width: 800px) {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    min-height: auto;
    height: 100%!important;
    padding-bottom: 90px!important;
  }
  &.links {
    background-image: url('~assets/corner.svg');
    background-position: bottom 20px left 20px;
    background-repeat: no-repeat;
    background-size: 200px;
    @media screen and (max-width: 800px) {
      padding: 0;
      background-position: bottom 2px left 2px;
      background-size: 150px;
      position: fixed;
      top: auto;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 80px!important;
      background: #1e2333d9;
      padding-bottom: 0px!important;
      z-index: 2;
      backdrop-filter: blur(5px);
      ul {
        display: flex;
        justify-content: space-around;
        width: 100%;
        height: 100%;
        li {
          height: 100%;
          width: 20%;
          .icon {
            margin: 0;
          }
          a {
            height: 100%;
            padding: 0;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: #fffc;
            font-size: 12px;
            &.nuxt-link-exact-active {
              color: #fff;
              .icon {
                color: lighten($highlight, 5%);
              }
            }
            .menu span {
              display: none;
            }
          }
        }
      }
    }
    ul {
      padding: 0;
    }
  }

  &.tribute {
    background: $background;
    justify-content: space-evenly;
    overflow: auto;
    height: 100vh;
    @media (max-height: 600px) {
      justify-content: normal;
    }
    img {
      //-webkit-filter: grayscale(100%); /* Safari 6.0 - 9.0 */
      //filter: grayscale(100%);
      box-sizing: content-box;
      border: 8px solid #fff;
      box-shadow: 0 0 10px 3px rgba(0, 0, 0, 0.6);
    }
  }
  &.details {
    background: $background;
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
      align-items: center;
      display: flex;
      span, em {
        background: $highlightmuted;
        padding: 3px 7px;
        font-size: 16px;
        margin-left: 15px;
        border-radius: 4px;
      }
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
    display: inline-block;
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
    }
  }
}
.highlight {
  background: $highlight;
  padding: 3px 7px;
  font-size: 16px;
  margin-left: 15px;
  border-radius: 4px;
  display: inline-block;
}

.menu {
  //display: flex;
  //flex-direction: column;
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
    margin: 30px 0;
  }
}

.subtitle {
  font-weight: 300;
  font-size: 14px;
  color: #adb4c7;
  margin: 40px 0;
  @media screen and (max-width: 800px) {
    margin: 25px 0;
  }
}

.svg-inline--fa {
    display: inline-block;
    font-size: inherit;
    height: 1em;
    overflow: visible;
    vertical-align: -.125em;
}
.fa-fw {
    text-align: center;
}
.fa-ul {
    list-style-type: none;
    position: relative;
}
.fa-li {
    left: -2em;
    position: absolute;
    text-align: center;
    width: 2em;
    line-height: inherit;
}
.svg-inline--fa.fa-w-8 {
    width: .5em;
}

.svg-inline--fa.fa-fw {
    width: 1.25em;
}
</style>
