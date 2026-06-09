import express from "express";
import { createReadStream } from "fs";
import { join, extname } from "path";
import { fileURLToPath } from "url";

const __dirname = fileURLToPath(new URL(".", import.meta.url));
const PORT = process.env.PORT || 3000;
const clientDir = join(__dirname, "build", "client");

const app = express();
app.use(express.static(clientDir));
app.get("*", (_, res) => {
  res.sendFile(join(clientDir, "index.html"));
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`\n  Your application is ready~! \x1b[8m`);
  console.log(`  - Local:      http://localhost:${PORT}\n`);
});
