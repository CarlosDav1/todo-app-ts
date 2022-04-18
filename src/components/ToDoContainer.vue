<template>
    <div class='todo-container'>
        <ToDoItem v-for="(item, index) in todoList" :key="index" :name="item.name" v-model="item.completed" />
        <ToDoForm @add-item="addItem"/>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import ToDoItem from './ToDoItem.vue';
import ToDoForm from './ToDoForm.vue';
import { TodoItemType } from '@/types';
import testData from '@/assets/seeder.json'

export default defineComponent({
    components: {
        ToDoItem,
        ToDoForm,
    },
    data() {
        return {
            todoList: testData as TodoItemType[]
        }
    },
    methods: {
        addItem(item: TodoItemType){
            if(item.name.trim().length > 0) {
                this.todoList.push(item);
            }
        }
    }
});
</script>

<style lang="scss" scoped>
.todo-container {
    display: flex;
    flex-direction: column;
    margin: 5rem;
    width: 25rem;
}
</style>