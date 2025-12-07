# ✅ **Main Production Build Commands**

### **1. Build the full Strudel web app (production Vite build)**

```bash
pnpm build
```
You can then serve it with any static server:

```bash
pnpm preview
```

---

# 🖥️ **Desktop App Production Build (Electron-based client)**

If you want the **Strudel Desktop** application:

### **2. Build desktop app**

```bash
pnpm build:desktop
```

This produces binaries under:

```
desktop/dist/
```



# 🧩 **Building individual parts of the monorepo**

Strudel is a PNPM monorepo. You can build packages individually:

### **4. Build all workspace packages**

```bash
pnpm -w build
```

### **5. Build inside a specific package**, e.g.:

```bash
cd packages/app
pnpm build
```

or for a library:

```bash
cd packages/core
pnpm build
```

---

# 🔧 **If you are modifying modules and need TypeScript rebuilds**

### **6. Rebuild TypeScript for all packages**

```bash
pnpm -w build:ts
```

### **Watch mode (dev)**

```bash
pnpm -w dev
```

---

# 🧪 **If you want to preview the production build locally**

After `pnpm build`:

```bash
pnpm preview
```

This uses Vite’s built-in preview server to mimic production behavior.

---

# 📦 Complete Build Workflow for Production

```bash
git clone https://github.com/strudel.cc/strudel
cd strudel

pnpm install
pnpm build            # full web production build
pnpm build:desktop    # optional desktop app
```


