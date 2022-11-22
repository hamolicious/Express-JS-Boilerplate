export async function get(path) {
  const data = await fetch(`http://localhost${path}`);
  return await data.json();
}
