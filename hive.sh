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
body{
  background:#0c0d0b;
  color:#eeeee6;
  font-family:system-ui,-apple-system,sans-serif;
  min-height:100vh;
  display:flex;
  align-items:center;
  justify-content:center;
  padding:1.5rem;
  background-image:
    radial-gradient(ellipse at 20% 30%, rgba(143,168,122,.08) 0%, transparent 50%),
    radial-gradient(ellipse at 80% 70%, rgba(143,168,122,.06) 0%, transparent 50%);
}
.card{
  background:#111;
  border:1px solid #8fa87a;
  border-radius:16px;
  padding:3rem 2.2rem;
  max-width:440px;
  width:100%;
  text-align:center;
  box-shadow:
    0 0 60px rgba(143,168,122,.15),
    inset 0 1px 0 rgba(143,168,122,.2);
  position:relative;
}
.card::before{
  content:"";
  position:absolute;
  inset:8px;
  border:1px solid rgba(143,168,122,.15);
  border-radius:10px;
  pointer-events:none;
}
h1{
  color:#8fa87a;
  font-size:1.7rem;
  letter-spacing:.12em;
  font-weight:700;
  margin-bottom:.3rem;
}
.sub{
  color:#8fa87a;
  opacity:.7;
  font-size:.9rem;
  letter-spacing:.04em;
  margin-bottom:2.2rem;
}
.btn{
  display:inline-block;
  background:#8fa87a;
  color:#0c0d0b;
  font-weight:800;
  padding:1.1rem 2.6rem;
  border-radius:12px;
  text-decoration:none;
  font-size:1.1rem;
  letter-spacing:.04em;
  box-shadow:0 4px 24px rgba(143,168,122,.35);
  transition:transform .15s, box-shadow .15s;
}
.btn:hover,.btn:active{
  transform:translateY(-2px);
  box-shadow:0 8px 32px rgba(143,168,122,.5);
}
.meta{
  margin-top:2rem;
  font-size:.72rem;
  color:#8fa87a;
  opacity:.5;
  letter-spacing:.06em;
}
</style>
</head>
<body>
<div class="card">
  <h1>THE UNIVERSAL HIVE</h1>
  <p class="sub">Prime Directive Active</p>
  <a class="btn" href="$REF_URL">ENTER</a>
  <p class="meta">INK · MOSS · PAPER</p>
</div>
</body>
</html>
EOF

echo "✅ HTML saved to $OUT"
echo ""
echo "Done. Open $OUT or go to:"
echo "$REF_URL"
