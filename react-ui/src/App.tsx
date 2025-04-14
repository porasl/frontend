import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import Register from './pages/Register';
import Upload from './pages/Upload';
import Landing from './pages/Landing'; // ✅ NEW

export default function App() {
  return (
    <BrowserRouter basename="/frontend">
      <Routes>
        <Route path="/" element={<Landing />} /> {/* ✅ Landing page at /frontend */}
        <Route path="/register" element={<Register />} />
        <Route path="/upload" element={<Upload />} />
        <Route path="*" element={<Navigate to="/" />} /> {/* ✅ fallback to Landing */}
      </Routes>
    </BrowserRouter>
  );
}
