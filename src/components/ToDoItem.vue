<template>
    <span class="todo-item">
        <input type="checkbox" :id=item :name=item :checked=isChecked>
        <label :for=item>{{ this.item }}</label>
    </span>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent ({
  props: {
    name: { type:String, required:true},
    val: Boolean,
  },
  data() {
    return {
      item: this.name,
      isChecked: this.val,
    }
  }
})

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.todo-item{
    width: max-content;
    
    & input{
        margin: 0;
        margin-right: 0.25rem;
        width: 1rem;
        height: 1rem;
    }

    & label{
        font-size: 1rem;
        line-height: 1rem;
    }
}
</style>
