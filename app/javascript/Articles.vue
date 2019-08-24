<template>
  <div>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Title</th>
          <th scope="col">Text</th>
          <th scope="col">Actions</th>
        </tr>
      </thead>

      <tbody>
        <tr v-for="(article, index) in articles" :key="index">
          <td scope="row"> {{ article.title }} </td>
          <td> {{ article.text }} </td>
          <td><a class="btn btn-info" :href="'articles/' + article.id">Show</a></td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  props: [ 'articles' ],
}
</script>

<style>
  
</style>