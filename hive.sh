#!/bin/sh
# Universal Hive — Site.pro Referral Launcher
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
body{
  background:#0c0d0b;
  color:#eeeee6;
  font-family:system-ui,-apple-system,BlinkMacSystemFont,sans-serif;
  min-height:100vh;
  display:flex;
  align-items:center;
  justify-content:center;
  padding:1.2rem;
  background-image:
    radial-gradient(circle at 15% 20%, rgba(143,168,122,.12) 0%, transparent 40%),
    radial-gradient(circle at 85% 80%, rgba(143,168,122,.08) 0%, transparent 45%),
    linear-gradient(180deg, #0c0d0b 0%, #0a0b09 100%);
}
.wrap{
  width:100%;
  max-width:480px;
  text-align:center;
}
.logo{
  font-size:2.4rem;
  font-weight:800;
  letter-spacing:.18em;
  color:#8fa87a;
  text-shadow:0 0 24px rgba(143,168,122,.6);
  margin-bottom:.2rem;
}
.tag{
  color:#8fa87a;
  opacity:.55;
  font-size:.75rem;
  letter-spacing:.25em;
  text-transform:uppercase;
  margin-bottom:2.5rem;
}
.card{
  background:rgba(17,17,17,.85);
  border:1px solid #8fa87a;
  border-radius:20px;
  padding:2.8rem 1.8rem;
  box-shadow:
    0 0 80px rgba(143,168,122,.2),
    0 20px 40px rgba(0,0,0,.4),
    inset 0 1px 0 rgba(143,168,122,.25);
  position:relative;
  backdrop-filter:blur(4px);
}
.card::after{
  content:"";
  position:absolute;
  inset:12px;
  border:1px solid rgba(143,168,122,.12);
  border-radius:12px;
  pointer-events:none;
}
.btn{
  display:inline-block;
  background:#8fa87a;
  color:#0c0d0b;
  font-weight:900;
  padding:1.2rem 3rem;
  border-radius:14px;
  text-decoration:none;
  font-size:1.15rem;
  letter-spacing:.08em;
  box-shadow:0 6px 28px rgba(143,168,122,.45);
  margin:1.2rem 0;
}
.btn:active{transform:scale(.97)}
.meta{
  margin-top:1.8rem;
  font-size:.68rem;
  color:#8fa87a;
  opacity:.4;
  letter-spacing:.12em;
}
</style>
</head>
<body>
<div class="wrap">
  <div class="logo">HIVE</div>
  <div class="tag">Universal</div>
  <div class="card">
    <a class="btn" href="$REF_URL">ENTER</a>
    <div class="meta">INK · MOSS · PAPER</div>
  </div>
</div>
</body>
</html>
EOF

echo "✅ HTML saved to $OUT"
echo ""
echo "Done. Open $OUT or go to:"
echo "$REF_URL"
