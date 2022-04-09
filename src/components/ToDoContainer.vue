<template>
    <div class='todo-container'>
        <ToDoItem name='Do laundry' :val=true />
        <ToDoItem name='Cook dinner'/>
        <ToDoItem name='Study TS'/>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import ToDoItem from './ToDoItem.vue';

export default defineComponent({
    components: {
        ToDoItem,
    }
});
</script>