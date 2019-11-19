<template>
  <div id="app">
    <Header></Header>
    <nuxt nuxt-child-key="none" role="main"/>
    <Footer></Footer>
  </div>
</template>

<script>
    import Header from "../components/partials/Header";
    import Footer from "../components/partials/Footer";

    export default {
        components: {
            Header,
            Footer
        }
    }

</script>
