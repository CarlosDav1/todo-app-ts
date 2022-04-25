<template>
    <div class="todo-item">
      <span @mouseover="itemHover" @click="$emit('update:modelValue', $event.target.checked)">
        <input type="checkbox" :id="name" :name="name" :checked="modelValue" @input="$emit('update:modelValue', $event.target.checked)">
        <label :for="name">{{ this.name }}</label>
      </span>
      <button @click="deleteItem">Delete</button>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent ({
  props: {
    id: {
      type: Number,
      required: true
    },
    name: { 
      type:String, 
      required:true
    },
    modelValue: Boolean,
  },
  methods: {
    itemHover(){
      console.log('eee')
    },
    deleteItem(){
      this.$emit('deleteItem', this.id)
    }
  },
  emits: ['update:modelValue', 'deleteItem'],
})

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.todo-item{
    display: flex;
    justify-content: space-between;
    margin: 0.125rem 0;
    padding: 0.5rem 2rem 0.5rem 0.5rem;
    border-radius: 0.25rem;
    border: solid transparent 1px;

    &:hover{
      background-color: #AACCE4;
      border-color: #56CBF9;
    }
    
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
