<template>
    <span class="todo-item">
        <input type="checkbox" :id="name" :name="name" :checked="modelValue" @input="$emit('update:modelValue', $event.target.checked)">
        <label :for="name">{{ this.name }}</label>
    </span>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent ({
  props: {
    name: { 
      type:String, 
      required:true
    },
    modelValue: Boolean,
  },
  emits: ['update:modelValue'],
})

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.todo-item{
    margin: 1rem 0;
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
