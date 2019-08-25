<template>
  <div>
    <p>{{ message }}</p>
    <p>{{ author }}</p>
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
      message: "Cnvrg.io Rails Assignment",
      author: "Liel van der Hoeven"
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
