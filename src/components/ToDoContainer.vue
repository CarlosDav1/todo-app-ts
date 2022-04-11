<template>
    <div class='todo-container'>
        <ToDoItem v-for="(item, index) in todoList" :key="index" :name="item.name" v-model="item.completed" />
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import ToDoItem from './ToDoItem.vue';
import { TodoItemType } from '@/types';
import testData from '@/assets/seeder.json'

export default defineComponent({
    components: {
        ToDoItem,
    },
    data() {
        return {
            todoList: testData as TodoItemType[]
        }
    }
});
</script>

<style lang="scss" scoped>
.todo-container {
    display: flex;
    flex-direction: column;
    margin: 5rem;
}
</style>