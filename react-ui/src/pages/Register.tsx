import { useState } from 'react';

export default function Register() {
  const [message, setMessage] = useState('');
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setMessage('');
    setLoading(true);

    const formData = new FormData(e.currentTarget);

    const data = {
      username: formData.get('username'),
      password: formData.get('password'),
      email: formData.get('email'),
    };

    try {
      const res = await fetch('/api/register', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      });

      const text = await res.text();
      if (res.ok) {
        setMessage(`✅ Success: ${text}`);
      } else {
        setMessage(`❌ Error: ${text}`);
      }
    } catch (err) {
      setMessage('❌ Failed to submit. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div style={styles.container}>
      <h1 style={styles.title}>Register</h1>
      <form onSubmit={handleSubmit} style={styles.form}>
        <input name="username" placeholder="Username" required style={styles.input} />
        <input name="email" type="email" placeholder="Email" required style={styles.input} />
        <input name="password" type="password" placeholder="Password" required style={styles.input} />
        <button type="submit" disabled={loading} style={styles.button}>
          {loading ? 'Registering...' : 'Register'}
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
    padding: '10px',
    fontSize: '16px',
    borderRadius: '4px',
    border: '1px solid #999',
  },
  button: {
    padding: '12px',
    fontSize: '16px',
    backgroundColor: '#0058e6',
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
