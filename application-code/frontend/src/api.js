import axios from 'axios';

const API = import.meta.env.VITE_API_URL;

export const api = axios.create({ baseURL: '/api' });


export const listTodos = () => api.get('/todos').then(r => r.data);
export const createTodo = (title) => api.post('/todos', { title }).then(r => r.data);
export const updateTodo = (id, data) => api.put(`/todos/${id}`, data).then(r => r.data);
export const deleteTodo = (id) => api.delete(`/todos/${id}`);
