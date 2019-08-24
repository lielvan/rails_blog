<template>
  <div>
    <form action="driversandcars/search" method="get">
      <div class="form-group">
        <label for="drivers">Drivers</label>
        <select v-model="driver_id" name="driver_id" id="drivers" class="form-control" :disabled="isDriversDisabled">
          <option value="">Select Driver</option>
          <option v-for="(driver, index) in drivers" :key="index" :value="driver.id">{{ driver.name }}</option>
        </select>
      </div>

      <div class="form-group">
        <label for="cars">Cars</label>
        <select v-model="car_id" name="car_id" id="cars" class="form-control" :disabled="isCarsDisabled">
          <option value="">Select Car</option>
          <option v-for="(car, index) in cars" :key="index" :value="car.id">{{ car.title }}</option>
        </select>
      </div>

      <small class="form-text text-muted mb-3">*If a driver is selected, cars options will be disabled, and vice versa.</small>
      <button type="submit" class="btn btn-primary">Search</button>
    </form>
  </div>
</template>

<script>
export default {
  props: [ 'drivers', 'cars' ],
  data() {
    return {
      driver_id: '',
      car_id: '',
      isDriversDisabled: false,
      isCarsDisabled: false,
    }
  },
  watch: {
    // Watch if either selects were picked. If so, disable the other.
    driver_id: function(newValue, oldValue) {
      if(newValue !== '') {
        this.isCarsDisabled = true;
      } else {
        this.isCarsDisabled = false;
      }
    },
    car_id: function(newValue, oldValue) {
      if(newValue !== '') {
        this.isDriversDisabled = true;
      } else {
        this.isDriversDisabled = false;
      }
    }
  },
}
</script>

<style>

</style>
