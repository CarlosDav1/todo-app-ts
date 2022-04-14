<template>
    <div class="todo-form">
        <input v-model="currentItem"/>
        <button @click="add()">Add item</button>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
    props:{
        addItem: {
            type:Function, 
            required:true
        }
    },
    data() {
        return {
            currentItem: '',
        }
    },
    methods:{
        add(){
            this.addItem({name:this.currentItem, completed:false});
            this.currentItem = '';
        }
    }
});
</script>

<style lang="scss">
.todo-form {
    display: flex;
    
    & input {
        flex-grow: 1;
        margin: 1rem 0.5rem;
    }

    & button {
        margin: 1rem 0;
    }
}
</style>