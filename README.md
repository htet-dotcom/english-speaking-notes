# English Speaking Notes

English speaking notes နဲ့ speaking pattern တွေကို category အလိုက် သိမ်းထားတဲ့ app။

## Features

- Category အလိုက် စုပေးပြီး ခေါင်းစဉ်တွေကို A–Z စီပေးတယ်
- Category တူ၊ ခေါင်းစဉ်တူရင် ခေါင်းစဉ်အသစ်မလုပ်ဘဲ ပေါင်းထည့်ပေးတယ်
- Title မထည့်ရင် စာထဲကနေ ခေါင်းစဉ်ထုတ်ပေးတယ်
- Save တဲ့အခါ စာကို ▶ ခေါင်းစဉ်၊ formula၊ → ဥပမာ၊ မှတ်ချက် ဆိုပြီး ပြန်စီပေးတယ်
- Note ကို screen အပြည့်ဖွင့်ကြည့်ပြီး Edit / Delete လုပ်လို့ရတယ်
- Note တစ်ခုချင်းစီအတွက် Gemini practice-exercise prompt (Copy ပြီး Gemini ဖွင့်)
- English စာကြောင်းတိုင်းဘေးက 🔊 နဲ့ အသံထွက်ဖတ်ပေးတယ်။ Header က 🔊 က ဥပမာတွေအားလုံးကို တစ်ကြောင်းချင်း ဖတ်ပေးတယ်
- ⚙️ ထဲမှာ ElevenLabs API key ထည့်ရင် ElevenLabs အသံနဲ့ ဖတ်မယ်၊ မထည့်ရင် browser အသံနဲ့ ဖတ်မယ်
- ElevenLabs နဲ့ တစ်ခါဖတ်ပြီးတဲ့ အသံကို ဖုန်းထဲ (IndexedDB) သိမ်းထားလို့ နောက်တစ်ခါ API key / credit မလိုဘဲ ဖတ်ပေးတယ်။ Note ထဲက ⬇ ကိုနှိပ်ရင် အဲဒီ note ရဲ့ အသံအားလုံးကို ကြိုသိမ်းပေးတယ်
- ⚙️ ထဲမှာ Login ဝင်ရင် note၊ အသံ၊ voice setting တွေကို Supabase (online) မှာ သိမ်းပြီး ဘယ် device ကဖွင့်ဖွင့် ရတယ်
- Note ထဲက **✨ ပြန်စီ** နဲ့ ရှိပြီးသား note ကို ပြန်စီလို့ရတယ် (↩ နဲ့ မူလပြန်ယူလို့ရ)။ ⚙️ ထဲမှာ Gemini API key (aistudio.google.com/apikey မှာ အလကား) ထည့်ရင် AI နဲ့ စီပေးတယ်
- Dark mode

## Supabase setup (တစ်ခါပဲလုပ်ရ)

1. Supabase → **SQL Editor** → `supabase-setup.sql` ထဲက စာအကုန် paste → **Run**
2. **Authentication → URL Configuration → Site URL** ကို `https://htet-dotcom.github.io/english-speaking-notes/` ထားပါ (sign up confirm link အတွက်)

## ဖုန်းမှာ App အဖြစ် ထည့်နည်း

- **Android (Chrome):** `https://htet-dotcom.github.io/english-speaking-notes/` ကိုဖွင့် → ထိပ်က **📲 Install** (ဒါမှမဟုတ် ⋮ → **Add to Home screen / Install app**)
- **iPhone (Safari):** Share ⬆ → **Add to Home Screen**

Install ပြီးရင် home screen က **Speaking Notes** icon ကနေ app လိုပဲ ဖွင့်လို့ရတယ်။ Internet မရှိလည်း ဖွင့်ပြီး note တွေ ဖတ်လို့ရတယ်။

## သုံးပုံ

`index.html` တစ်ဖိုင်တည်းပါ။ Browser နဲ့ တန်းဖွင့်လို့ရတယ်။

GitHub Pages နဲ့ တင်ချင်ရင်: repo **Settings → Pages → Branch: main / (root)** ကို ရွေးပြီး Save နှိပ်ပါ။

## မှတ်ချက်

- ElevenLabs API key ကို code ထဲ မထည့်ထားပါ။ App ရဲ့ ⚙️ ထဲမှာ ထည့်ရင် အဲဒီ browser ရဲ့ localStorage ထဲမှာပဲ သိမ်းတယ်။
- Note တွေကို browser ရဲ့ localStorage ထဲမှာ သိမ်းတယ်။ Browser / ဖုန်း တစ်ခုချင်းစီမှာ သီးသန့်ဖြစ်တယ်။
- Claude က စာကို အပြည့်ပြန်စီပေးတဲ့ feature ဟာ claude.ai artifact ထဲမှာပဲ အလုပ်လုပ်တယ်။ ဒီ GitHub version မှာတော့ သင်္ကေတတွေကြည့်ပြီး ရိုးရိုးစီတဲ့နည်းနဲ့ပဲ စီပေးတယ်။
