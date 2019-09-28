<template>
  <div>
    <table class="table" id="drivers">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
          <th scope="col">Date Of Birth</th>
          <th scope="col">Actions</th>
        </tr>
      </thead>

      <tbody>
        <tr v-for="(driver, index) in drivers" :key="index">
          <td scope="row"> {{ driver.name }} </td>
          <td> {{ driver.email }} </td>
          <td> {{ driver.date_of_birth }} </td>
          <td><a class="btn btn-info" :href="'drivers/' + driver.id">Show</a></td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  props: [ 'drivers' ],
}
</script>

<style>
  
</style>