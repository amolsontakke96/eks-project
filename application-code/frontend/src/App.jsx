import { useEffect, useState } from 'react';
import { listTodos, createTodo, updateTodo, deleteTodo } from './api';


export default function App() {
const [todos, setTodos] = useState([]);
const [title, setTitle] = useState('');
const [loading, setLoading] = useState(false);


const load = async () => {
setLoading(true);
try {
const data = await listTodos();
setTodos(data);
} finally {
setLoading(false);
}
};


useEffect(() => { load(); }, []);


const add = async (e) => {
e.preventDefault();
if (!title.trim()) return;
const todo = await createTodo(title.trim());
setTodos([todo, ...todos]);
setTitle('');
};


const toggle = async (id, done) => {
const updated = await updateTodo(id, { done });
setTodos(todos.map(t => t._id === id ? updated : t));
};


const remove = async (id) => {
await deleteTodo(id);
setTodos(todos.filter(t => t._id !== id));
};



return (
<div style={{ maxWidth: 600, margin: '2rem auto', fontFamily: 'system-ui' }}>
<h1>MERN Todo</h1>
<form onSubmit={add} style={{ display: 'flex', gap: 8 }}>
<input
value={title}
onChange={(e) => setTitle(e.target.value)}
placeholder="Add a todo..."
style={{ flex: 1, padding: 8 }}
/>
<button type="submit">Add</button>
</form>


{loading ? <p>Loading...</p> : (
<ul style={{ listStyle: 'none', padding: 0 }}>
{todos.map(t => (
<li key={t._id} style={{ display: 'flex', alignItems: 'center', gap: 8, padding: '8px 0', borderBottom: '1px solid #eee' }}>
<input type="checkbox" checked={!!t.done} onChange={e => toggle(t._id, e.target.checked)} />
<span style={{ textDecoration: t.done ? 'line-through' : 'none', flex: 1 }}>{t.title}</span>
<button onClick={() => remove(t._id)}>Delete</button>
</li>
))}
</ul>
)}
</div>
);
}


