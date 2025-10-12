import axios from "axios";
import apiUrl from "./config"; // ✅ runtime-aware config

export const api = axios.create({
  baseURL: `${apiUrl}/api`, // ✅ template string resolved properly
});

// API functions
export const listTodos = () => api.get("/todos").then((r) => r.data);
export const createTodo = (title) =>
  api.post("/todos", { title }).then((r) => r.data);
export const updateTodo = (id, data) =>
  api.put(`/todos/${id}`, data).then((r) => r.data);
export const deleteTodo = (id) => api.delete(`/todos/${id}`);

