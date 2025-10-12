const apiUrl =
  window._env_?.VITE_API_URL || import.meta.env.VITE_API_URL || "http://localhost:4000";

export default apiUrl;

