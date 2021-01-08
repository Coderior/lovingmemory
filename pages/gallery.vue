<template>
  <div class="container">
    <div class="section links">
      <Nav />
    </div>
    <div class="section details">
      <h1 class="title">Gallery</h1>
          <CoolLightBox 
      :items="items" 
      :index="index"
      @close="index = null">
    </CoolLightBox>

    <div class="images-wrapper">
      <div
        class="image"
        v-for="(image, imageIndex) in items"
        :key="imageIndex"
        @click="index = imageIndex"
        :style="{ backgroundImage: 'url(' + image + ')' }"
      ></div>
    </div>
    </div>
  </div>
</template>

<script>
import CoolLightBox from 'vue-cool-lightbox'
import 'vue-cool-lightbox/dist/vue-cool-lightbox.min.css'
 export default {
  components: {
    CoolLightBox,
  },

  data: function () {
    return {
      items: [
        'https://lh3.googleusercontent.com/pw/ACtC-3dYUufFBpNdOWAhiDN4KX7YI6b0DV022XFZh_JyCJ58D25LRLDxOgC-oaOdf7BbdH65-oZDgSM-AiSQyt3O1fUEsYabEydk8aqwzFkNtNQ7PLKDqy_DZ6Q_HdVsE5gKsLTL1MVCWV_rvcLzl1LM4a7pXw=w778-h1036-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3d6XLEKJWfATcVjxoSDBA2K5hP3E1bqQpsz8GjiIKAUmgtsTox8-_9h4RlnSJvEJW4U-UuPCBXY93LZr41oyPqTA2gRmAVd9THLnI0vd8gGrPZSr9Z86L_AeBpxBjdoN-Jpwjk3iUDd2zCAXDF5YvkHNw=w709-h945-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3c4W7oBVshZemW7EiMGziCHw9dO9ivM4IV5o6fKyJIDDdeY0HPSp7OD-CsAEZ_qbEr2R3YgcHzRusP7MLvaCCKTmVT7TVHFfstaHpWlcSrU-Hj2e1ga2ATdZewY_jpU0cnlezSqN7oTPjweAI9LK-YynQ=w778-h1036-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3e_43vbpJQwYpEnwhib9i4_BR6dgygl8393YaPxmgAalik2WvPfvl_dl3WgnKdqv9eq5CT6ary-etH8ceQt-EDUzm-_bTNyfNHr7Coy_3hqDKyuElSxQf3x74LRB1cwjndXFXWCYLVXSaqaF6ag9ZW7vQ=w778-h1036-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3ctE4TKcPDEs-WJF_0pKeGT4bvRycIPPQYmIN6nNQukitz75igN483Y9rgAjHQk2sDQupJ-j2gRqTzMn4qVradjisWxmOfpQED_O6rRbn1SIsLg_OfTwcvEy7ceOXSpSotgAMbHM7753cLCdyx1vfJ4fw=w472-h1036-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3e3-sHFc_nsRyjhp0UvZCF25rlm1kATmZtjPOm2yWhWCqhNr812pJjDYsM1JzdUCy3eS2uU7mFiZGkAcsbpTTF_bIZBunC3ajwpyyrmcir-AJTttC0grJrs4RBv4_3wyOlMM5wLnYetX05lxenAbXyaqQ=w1024-h768-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3cPSh9kE7kDAlsjH67NCklFTpOYpm_BPh69RcwdNwCBJ_851A4bFmdMFWyKAEf7ijdVbyjRLW2GvknXg3gP4VWlVdkImYlEvDtUwk-uDXbPFW63PxxTxDRHw1lmv47J7W6JwvVaf1QfE7pm6Yv7C3vVgg=w692-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3fB8q6p5Op4y24Gj_t-VngwLYCbNBgF6Ihm2_BZ9QZBOprva0r_FLdECosYJ1BPCsJlSssteP_xYmwdUpTa0zDsX7JANkL7V2Q8Mth4eZkABTmcJB7ZqrWvj8plzIrZq5DlOrA3OJcj58HdkzGIyjJV-g=w1079-h527-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3d-nOibBO8gTDvtpeijrVr7ZuFGEP6hhPYq2e0CuWO00EDM8icJ4j_qS_r-4c4HLN1dHcfq9ar6DdNL5QtR0VEMiOlQi8AJIit3M5DN7XsuxOqfjN18ZuxA3t2GgQXvkjqqgzNoUFYYn29If9uzuCGaiQ=w438-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3fIOdWJRhBgDlAQNRxKpkS5FaqDVfvGFyf9Yg3qRpZIdyhGi2c8cQXtKAcdVFiIASv0vN_IMyIpCd0Gdn1wSg2lu2WhgknD9Fmx9UAAAO97t56J27Gr7toWxaQZD7HzMTh_xUhwW0poxGM75pskxpjfKQ=w664-h922-no?authuser=0',
      ],
      index: null
    };
  },
};
</script>

<style lang="scss">
.images-wrapper {
    margin-bottom: 20px;
    margin-right: 20px;
    display: flex;
    flex-wrap: wrap;
    width: 100%;
    @media screen and (max-width: 800px) {
      justify-content: space-evenly;
    }
}
.images-wrapper .image {
    cursor: pointer;
    background-position: 50%;
    background-repeat: no-repeat;
    background-size: cover;
    margin: 3px;
    width: 125px;
    height: 125px;
    @media screen and (max-width: 800px) {
      margin: 0;
    }
}
</style>
