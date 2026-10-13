#!/bin/sh
# Universal Hive — Site.pro Referral Launcher
# Run in iSH: sh hive.sh

echo "🐝 Universal Hive — referral launcher"

REF_URL="https://site.pro/?ref=2e06375fc2f1adee33bdabc39218f9c2"

echo "✅ Referral link ready"
echo "$REF_URL"
echo ""

OUT="$HOME/hive-builder.html"
echo "Creating $OUT ..."

cat > "$OUT" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>THE UNIVERSAL HIVE</title>
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{background:#0c0d0b;color:#eeeee6;font-family:system-ui,sans-serif;min-height:100vh;display:flex;align-items:center;justify-content:center;padding:1.5rem}
.card{background:#111;border:1px solid #8fa87a;border-radius:14px;padding:2.5rem 2rem;max-width:420px;width:100%;text-align:center;box-shadow:0 0 48px rgba(143,168,122,.18)}
h1{color:#8fa87a;font-size:1.6rem;letter-spacing:.08em;margin-bottom:.4rem}
.sub{color:#8fa87a;opacity:.65;font-size:.85rem;margin-bottom:2rem}
.btn{display:inline-block;background:#8fa87a;color:#0c0d0b;font-weight:800;padding:1rem 2.2rem;border-radius:10px;text-decoration:none;font-size:1.05rem}
.btn:active{transform:scale(.97)}
.meta{margin-top:1.6rem;font-size:.7rem;color:#8fa87a;opacity:.45}
</style>
</head>
<body>
<div class="card">
  <h1>THE UNIVERSAL HIVE</h1>
  <p class="sub">Site.pro Referral</p>
  <a class="btn" href="$REF_URL">GET STARTED</a>
  <p class="meta">Ink · Moss · Paper · Prime Directive</p>
</div>
</body>
</html>
EOF

echo "✅ HTML saved to $OUT"
echo ""
echo "Done. Open $OUT or go to:"
echo "$REF_URL"
