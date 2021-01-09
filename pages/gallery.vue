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
        'https://lh3.googleusercontent.com/pw/ACtC-3dSmquKgep-mTWXpBk319jyce5wIcJDO3KviZbuPB-bGJrHA0xxnQaz0DpR6C-ot7siTL0c4rUZnai4ZfXdrdo9T5v_RVUDKN78gUgQX5GwRJn4e9iseMg7GvkcfnXRN4HkxCuW04KUATxDAMGHYa6png=w926-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3f_2Ft3IM2Gulmq3oOQlg-9nCvvnfMCF1P5qv4eau-bnVgPl3ptJZr5RNLo7sIonfghbWyG1I9f_s1upFbjfWr7CHSwg1h2pu3TdbkrZl_oY68PWPZmc3CrQ7rvVNagOtNBvgrj9ye7oz3mSO8lb3oZtg=w930-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3epNdTECjCu5r7X9YdQVnU3afiFZzddR7T0MOJ9dJSkkjlTfS2PPtFs9CqmEuLdYNBF8qGLESfVOJIi_FDZrUgJJE7YSK06m5-5D7enDeImP-KTUxdD4RJ627yk-_ZIpiJfXcVy-JEh77A5TxtRqjpg0w=w692-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3dHSRJU82P7CjVJByjaEQJHOXg0nuKngXtNpVij4WLAZn5eE0AHL0uebNA8fyrr57wzzPEYMJkQoRrWCRRCB2BTgvsxNLCahsXRH7LY_R9JUv697mH2tVbR0Auba7rTE-zKkpd_1nlwg5q_K0A7Xii8xg=w692-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3eDa3ynD2X01-9rw07MNUY0liqWWIsHzJefRL5dLP-_xXyDsznwpOo6nwZgvfRBRxWDVkUCX-4FJTc8-JW7UimqWsyUcqvILFyrwdlGdr1G3WfhzpdMoj0LNLpgDkuEInMAju9yADQdpPXckfpkKPITxw=w1230-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3cd2ARr4E2uynNAH2OCyhvGN4HKNcaZtup-oYGrrU0pw2lo_W9lDHcXvlQKPUGO99fdpcRm53hCrEjSDogywWFUx_sZ0lGQg4as4y95LXQ1TiqSX76N4Gd7Z7pUPZSZS5-85inJfB7t7eo1zKZa5AzhiA=w692-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3dtiIl_72kC2n25vsNS_qIm04UC43HuCDkVJoGg58t2jgGTfqeSfn_KeI9JCHcY_rZZ9TeOBiZsoudAHRefuGIb-Kcqtst6-_7F-ICodUsd2ivqgMNtloTjVgrrQFAGzYKwDBp6JsuC7552T65ZtC7ZtA=w692-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3dmwMRWyUH9sZAb24V5khKLw3rg360Zzb4tUFDm5hGAhL40sILACH6GS2eBEL3XDgnLp6Fb_No7yrQ21glh76VFrAhv6RgJ6QkEdzfQlUs0rhTySB4Tz7vdE4cPZLeq5UakzF5ugDyJzmo1JWS_VWlNpA=w692-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3dHJ0r0mM_WzakIF_ZR6Rxr8PSQczLgsHMFdo07c_8b4VM-KnYu6tfqIognJtZTloDepZb8jyKdZyAzbFOyvZ2h0rVCjc3EnhcSu5u3FrgutnRt0GKA-r8mBoY36H_gjoZdARErpgXBnQgTJVK24v2T7A=w692-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3e7XmFmHL2vA2ax4B3UocZGRPK8-4VihEblfTLit-5rm3hWyjygPABcVEoL1cmEcfF30XQF1xhumEvFAmBgzIG1uCuAzU1rm_ZQkf1x_KCuG2TVWylqwdx3E5wSnnmAWGZEXMcDSuAu11hwIraeRngMNQ=w692-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3fodac7f0bbQqRPvFmhjyQKd3w-w42JzSdLnrKweMc2a8RauHJm6giZB9VVyclTzz0AfEdy3HNeOb8nArYC_KCR81teXyDhd1TirHJeOOuVwG1_jj_VJfptd4_mgMYp3RV9lgjlVcTXVJNdMLhOyI29RA=w448-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3fkEMza6Wn6atH_jM-FfXAK7ttvwTjtOMRPGcNifDDB4fyydAtKp1IbmciRrp3DtpGyXsKv7P5DOTFUkmgLi9NUV-e-3Ifibu2WONAL_X5uoRzXd9U4_Ot36GFIHqZlQmBe8FbHlx__tgDkcIrPkQ4rGg=w692-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3caHbmojUcVm_NX9v2JWhP17OuOpWq1cn8ZVV26B9cmhdQBbk2vd93CpQFbbgaVzq1HNIojYrsV5bKq9vPyPuPVqt-ErplVkdfSbckah7hLicEG9x3Va2wVmzBlbQVMlcbAZ9EUER3x77nKRyVk3J52Jg=w1336-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3dm2YCbVa1444n8WixM5QLnV87stOSUlXVbRji60TlB_nhILWq1f-Tw9ANneI60muAX8nnebK-WLAssuR5Pu_5h_YS3UFG4cevOj93RIk6cOwj1przX9K1evQPf08Ez7LUIMUJaPQ9GyaR3sKJFTMzxDg=w1230-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3d7dAe4kMAl8ps2a3x1lBge4DT3MAugzoyL_6Sed3egtauV1O6bvtZwTWtHefFHziUkosdDvoPqPuJzaNEUDPB1hRpRhuHL4yzg8l7fAbGwmis4jBZSVTZh2FAiASY6UYlxmGWkEzhUdtPwPoXssS_t_Q=w1024-h768-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3erZuYNUTS1Q_N3T1irPD8yrj8MPxa16LuOT6dw_mc6QLfVFOVotn5BXlJ1Bua3tV_tnZOjVDh5sr9Um8-VGtCvgiThHYfFnfzRIAQIvIXubSM_56O98xjHWS4Fk9-ciWvnsbVzoVAw4Y0tFSGuPuJdAA=w692-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3dOpskSb8FsNAUiH9fIHRUq0aV0JpPLBdR82GW-YRS5ixUaUdIhYh6URG6xJ-m4rt7czyih2gmV5Az8O0DaOnEoJI3XVKY5Re5pMFJILcov_IqQcH-az3pcleVYYFipsUgkoP4b-Rr0ZvqTYNF_fPXlwQ=w1230-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3cGvuLArbDJsBoKHbkiSNnvajG1YLAPhYb0dlMEnA11tKMDNrfCkG8Iobf7l1cuto_WG5Imtui71lP27kMwZoc9l774KEuz-HzuLXlvIWcFAotCIQvNZif0bCVGHYLrBH10Bd8NrqcbZ4wQ9OEh-TO-jg=w1024-h768-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3fufJO1AoE4xz_95wSIM2jzTve236YIhegkCIgoB0ZQpqOMjln7k8B24lVR4UGZBkLpZoIgt5bMS9eB9ys1gNMCrb8DLwFW1yCepm3VTn6ly8jolXKjls_S2dom5RL813qgGAqlu1x9cYsgg4cAShdCLw=w626-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3eITmvr7VG72pMCnB5QliXGAzDkBfc_7S3TG01NoKlZbcObwdzRmjMFb90cn4rJV9XaO-Z3xFwcenBLIwyYda9a0CMwxEUrgbLJfnctFl9LIzokDNOv_aqbXHG_EU2T0xaOYtsUwV3O9TOOYYW3EHSt-A=w716-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3eSpNHBkKsZ4XgV4raZgxoiUY6Fl7uF_i2tN-Y0RYMrzzURBs6jDZ5a-QSl887nXS3ad-3UBZE1RNG7wDsRHIm-mAgAdEzvYL99qRfVVHO8KP9_PrqG8Q5DCVCXtFyUq1bnXnT3KENMsz4SWAB_jMTFDQ=w584-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3e0MbfYAVmqUVlbQAa2Wz6XrWXIVw8bW-c_xu5NDlOhhnIOBWFZZQ5_LsznCu4og9i7MDnSWL5TODc3plYCdlA0F7C9T5CWue00pxh4C3FiWNwqKdFxvVyZBImKG-4fKW-p9LWKfg_8bgxTDHa7o8n1Zw=w586-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3foq9FxVNxpCcu8y9thwrq74sTD2GPiPCnyyveV4WDQ3tcY9Vzz2r3zRdkYbPhb0jGVbbh81MEk8zszWXvEkCQR59QKmMlzqiAbiE-w5MaipKfNed_JldBY6l3IyIYO-HWLGc08xGhtw1OEbAYBL2jlIw=w658-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3fLfei03tMte-Cgh7f0sqFVOo2p9C4--v1auKqOrepq7sZy52pkEmcgjhmNps1tutYJI1s_uET5K4NdM1b4aynKYD7OMi72j8NdbaK9VREB4fzwLQzm1miZ9HrKJTT30oI-tEId1K0meYntoyLU-1dcXw=w618-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3e9BYsN51KCSXWApQOdN6vjidqeTKT91-kcgoLFLVT-8lEvxXU6IHouz3i-OX6jv0JmwXSFKTslwPhgnlruf6THFLkAzFTgoPfY0LEhjZaO8T42ezmzYPo_1adXwOodIR_aIGr9czN8Wc-CtXngfnmX2w=w1458-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3eAFIfbVpmj5VTcBuiApXXMGR73K6LhjtvrENhoeN5WqSRdOSkLXMmiPuVCjiVWs74HKVeYGsPkXQZVnRvTuHfME2TyQXnwxXYQkdTWpJKnmpu-YxSgR0K9G6aycLx0aIVC-2XNbzQRRi8si4r5iTxFOQ=w658-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3eMpPW6JvTteYgKTo9FzIrh1SmahIffc63OhIbGbqdDGvPKvSEVZDbo8XFZ-wVYn39eK2QQuxPJ60mL_potwrGuN-lppk9bErRdXbaP0zks5X6V92WyvhUcYxIoAjQjAAYNjj09RSqi7Ar3NIS8_vPJgw=w692-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3c-TtsJY_JouJqFd2GumEjZZlWJUDVsJkv09pTB-9bps8i5a2InyKVtgnOZ6FUy4hCkXkxIxCz5UdGk74jnz1tB76vZugP7wQVAObGaeOonLMw7ERz1Y-besyToTho-uJEJisJhXXISg8liEh0qOHVFKA=w1200-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3dbOuZ9KCpq9dTTEPeRDQfC75wDRNPZxEwi75iIldCmdr-yBbusIV2h4CTBmvMmuGXe7fXjniJJ6H_wgT0bwrUkQc7fSwWzDRnJNYvKdMuSNSY7WFjWpLojToc2Vl1CIhfylJgxua_F3xHCWWIKr28Z9A=w1218-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3fEgtGEYPqSG1Cr347XsyJs8Rpx0bnFc35SIJTPX3EywZbPQzb6Jnlgk4wD93NeYUacWKhopzP9g8TKhTA1CQz4xlEpq_2Jw3XdfSbDKLiDCozH7vGewBWEC19vinxvhVIJdqeCw81v0AIfcuaF3ocddw=w740-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3cfyZdDnCVtFSkcPPJ8XZPaAPKV3lRcF9GApSP4MNESo4DOPUZv1ktGCZXwpAycPReNU4OQS6DSr-OEiIoPTfuh4PAPKPyJmZMzasyyi2Sq_YqXyYHHRwLWmumw_jKBp7nBjBylhaDQxRVqevUPlIYoVA=w544-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3eluCIJgNZAvMFCoK0vGX6H5TZFWtRi7b_n1pNt0YjHqxsTdi364cduzgv-bYKShI02B6oLe-0-Q7MdK42b7gymY_GjctpIOHGtWXcSMz_fEqDwclax5_YZrbXzE99zmFFsptzELB8RAXs9sPq1pcxZLw=w1500-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3cYq_eus-Eq1HP7f-I8S3hmk9DwRFarjStwAwQn-6YrZ3NYDqWOO40l1sgwuz-0OOsbpVVBKlTA5_SuCG-g84f8MWReN0DwRSWqlCZpiKhfOEClIphFvYYGTB-BbotloU0shX2a2vWuwGc76LgFSfQP7Q=w782-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3c9EFjWvHV1oQqVL4-oB-c_op3bYZ3EmA9EJdRZcUOQ9sG4K-tCdesaGH38qeDnvuZzBbPla71xRbChXEb1mDaDQ9kJ-nZKeMLy9t0SzYEQyA0kY0u2Q6H5mXoEJNPgky4DFPSKxj_7xXXcvp1XvMBLDg=w784-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3fe7GL0JfbUIHixM-tAHErTMfJ9S077-2E7n8vznQ5n5wrlYUdO_84IWg1faicvqDaoLGeFxxHt9kvk8O6yJZYYyUW3ShvhnootEzQURK5QJEAtSMU4qFnBEXG_OOIEryiTPa_6_gdLu4A54Fc314OzgA=w762-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3ck6dHfJ3eHb5Yt79o-6kNAehOF4La8udqvsPHcukZrfz0YxxddlAvz7xxikeFbH3r6ZpKmIWH54FYS4vqk8_AQTThdWMJF_iP-qtFO74HztKJIx9VmiR-bOdotgJHmH28Scn_Yl-kwg_e6KuMcP-kfsg=w520-h924-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3c8smTf1fIbaUh1wlCPe2nU09XLs_UCfpKFHobxb5Tgi9v3Vy-Ca7tibd_gLVXLcK8VCpsGyBk0jGRS232cvqQ4uEJwr-Jee-CabXI9FE0ckyNHMzTWk42OF-3KhCif1Ii3_IyiCnfDvLYJRVB24BMaFw=w936-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3ffKN0vOJgyiloEa_9v0Y009DlvRc7QHUmi5f3uxrePH3Y82dICyIWrLr9baCZgMiLsFQ5xl6Acp7QId5k0ZypQ9xGA6PZkorLBkszrPByK28IZWTmHSP_5oi73VFD22y9kyp36kDS7IwfKiGbzYWTy7g=w1388-h922-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3eqGGT3t4Q8RQGBN0TndVEQtwDPEBA9s3lfKnkW6P4zeTKLmdLqZ5yec2bbNkYgVJ-ngjf1sEkMw2_K8_lp4kgrEj_Nv-4O2W9quqn-qeSx4Y9Q-IwuswKrp_1GJF6-PWrFNPQGJrtlYqP4Qwsmk73TrA=w1322-h880-no?authuser=0',
        'https://lh3.googleusercontent.com/pw/ACtC-3fXJNXo87mOsbcAcsUY2Vzmc2oYw08lPpnU36eF-gLjLY1x1OBjbvD2InbXHfC9nfLzVlkagjBAOHRUBJGe6HQaX1_PyQzrVezjdtzIdZz5smKI8kgONceYLeiROaJCoL64BT3KkGZrPkr9njDs0Njf1w=w1082-h930-no?authuser=0',
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
      justify-content: center;
    }
}
.images-wrapper .image {
    cursor: pointer;
    background-position: 50%;
    background-repeat: no-repeat;
    background-size: cover;
    margin: 3px;
    width: 120px;
    height: 120px;
    @media screen and (max-width: 800px) {
    }
}
</style>
