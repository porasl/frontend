export default function Upload() {
  const handleUpload = async (e) => {
    e.preventDefault();
    const formData = new FormData();
    formData.append("file", e.target.file.files[0]);

    const res = await fetch('/api/upload', {
      method: 'POST',
      body: formData,
    });

    alert(await res.text());
  };

  return (
    <form onSubmit={handleUpload}>
      <input type="file" name="file" />
      <button type="submit">Upload File</button>
    </form>
  );
}
