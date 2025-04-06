import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Register from './pages/Register';
import Upload from './pages/Upload';

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Register />} />
        <Route path="/upload" element={<Upload />} />
      </Routes>
    </BrowserRouter>
  );
}
