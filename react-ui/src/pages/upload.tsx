import { useState } from 'react';

export default function Upload() {
  const [message, setMessage] = useState('');
  const [loading, setLoading] = useState(false);

  const handleUpload = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setMessage('');
    setLoading(true);

    const input = (e.currentTarget.elements.namedItem('file') as HTMLInputElement);
    const file = input?.files?.[0];

    if (!file) {
      setMessage('❌ Please select a file.');
      setLoading(false);
      return;
    }

    const formData = new FormData();
    formData.append('file', file);

    try {
      const res = await fetch('/api/upload', {
        method: 'POST',
        body: formData,
      });

      const text = await res.text();
      if (res.ok) {
        setMessage(`✅ Upload successful: ${text}`);
      } else {
        setMessage(`❌ Upload failed: ${text}`);
      }
    } catch (error) {
      setMessage('❌ Upload error. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div style={styles.container}>
      <h1 style={styles.title}>Upload File</h1>
      <form onSubmit={handleUpload} style={styles.form}>
        <input type="file" name="file" required style={styles.input} />
        <button type="submit" disabled={loading} style={styles.button}>
          {loading ? 'Uploading...' : 'Upload'}
        </button>
      </form>
      {message && <p style={styles.message}>{message}</p>}
    </div>
  );
}

const styles: { [key: string]: React.CSSProperties } = {
  container: {
    maxWidth: '400px',
    margin: '40px auto',
    padding: '24px',
    borderRadius: '8px',
    border: '1px solid #ccc',
    fontFamily: 'Arial, sans-serif',
  },
  title: {
    textAlign: 'center',
    marginBottom: '16px',
  },
  form: {
    display: 'flex',
    flexDirection: 'column',
    gap: '12px',
  },
  input: {
    fontSize: '16px',
  },
  button: {
    padding: '12px',
    fontSize: '16px',
    backgroundColor: '#008c4f',
    color: 'white',
    border: 'none',
    borderRadius: '4px',
    cursor: 'pointer',
  },
  message: {
    marginTop: '16px',
    textAlign: 'center',
    fontWeight: 'bold',
  },
};
