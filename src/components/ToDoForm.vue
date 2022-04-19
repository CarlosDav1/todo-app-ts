<template>
    <div class="todo-form">
        <input v-model="currentItem" required/>
        <button @click="$emit('addItem', {name:currentItem, completed:false})">Add item</button>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
    data() {
        return {
            currentItem: '',
        }
    },
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