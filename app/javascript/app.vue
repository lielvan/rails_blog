<template>
  <div>
    <p>{{ message }}</p>
    <a href="/articles">Blog</a> |
    <a href="/drivers">Drivers</a> |
    <a href="/cars">Cars</a> |
    <a href="/driversandcars">Drivers & Cars</a>
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: "Cnvrg.io Rails Assignment"
    }
  }
}
</script>

<style scoped>
div {
  font-size: 2em;
  text-align: center;
}
a {
  text-decoration: none;
}
a:hover {
  text-decoration: underline;
}
</style>
