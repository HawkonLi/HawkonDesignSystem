# Hawkon · Style Recipes（风格配方）

让设计"现代而不廉价"的几招，已沉淀为 token，照抄即可复现。配套见 `css/tokens.css` 中的 `.hk-*` 工具类。

## 原则
- **克制的材质**：一层胶片颗粒 + 一团柔光，足够；不要叠特效。
- **节奏对比**：超大流体标题 vs 极小等宽标签，拉开大小对比。
- **Mono 是角色**：等宽体专职"眉题 / 元数据 / 坐标 / 索引 / 代码"，制造工程精密感。
- **一次一个强调**：Ember 暖色全局只在一处（如"在招"呼吸点）。
- **动效服务内容**：用 `--hk-ease-out` + `--hk-dur-slow`，缓慢柔和；尊重 `prefers-reduced-motion`。

## 1. 胶片颗粒 Grain
```html
<div class="hk-grain"></div>   <!-- 固定全屏覆盖层 -->
```
强度由 `--hk-grain-opacity` 控制（亮 .05 / 暗 .08），`mix-blend-mode: soft-light`。

## 2. 极光辉光 Aurora
深色 hero 内放 1–2 个模糊圆，缓慢漂移：
```css
.aurora{position:absolute;border-radius:50%;filter:blur(60px);z-index:-1}
.aurora.a{width:420px;height:420px;background:var(--hk-glow-sky);animation:float 14s ease-in-out infinite}
@keyframes float{0%,100%{transform:translate(0,0)}50%{transform:translate(-26px,22px)}}
```

## 3. 流体大标题 + 衬线斜体点睛
```css
h1{font:800 clamp(54px,11vw,108px)/.92 var(--hk-font-latin);letter-spacing:-.035em}
h1 em{font-family:var(--hk-font-serif);font-style:italic;font-weight:600;color:var(--hk-sky-400);font-size:.82em}
```
用法：`Haw<em>kon</em>` —— 一个词转衬线斜体，瞬间有"作者气质"。

## 4. 编辑式索引数字
```html
<div class="hk-index" style="font-size:clamp(38px,6vw,60px)">01</div>
```
描边镂空 + mono，杂志分章感。配 mono 小标签（`// Selected Work`）。

## 5. 光标聚光卡片 Spotlight
```html
<div class="card hk-spotlight" data-spot> … </div>
```
```js
document.querySelectorAll('[data-spot]').forEach(c=>c.addEventListener('mousemove',e=>{
  const r=c.getBoundingClientRect();
  c.style.setProperty('--mx',(e.clientX-r.left)+'px');
  c.style.setProperty('--my',(e.clientY-r.top)+'px');
}));
```
强度 `--hk-spotlight-strength`（默认 13%）。hover 不再整块上浮，靠光晕 + 发丝边框泛蓝。

## 6. 坐标 / 元数据读数
mono 小字呈现定位、版本、状态，呼应"空军 / 精密"身份：
```
N 39.92° · E 116.39°
BEIJING · CUC · v1.0
```

## 7. 在招呼吸点（Ember 唯一出场）
```css
.pulse{width:8px;height:8px;border-radius:50%;background:var(--hk-ember-500);animation:pulse 2s infinite}
@keyframes pulse{0%{box-shadow:0 0 0 0 rgba(224,122,63,.55)}70%{box-shadow:0 0 0 9px rgba(224,122,63,0)}100%{box-shadow:0 0 0 0 transparent}}
```

## 8. 技能跑马灯
水平自动滚动 + 两端遮罩 + hover 暂停；轨道内容复制一份实现无缝循环。

## 9. Bento 不等分网格
打破等分：主项目占大块（`grid-row: span 2`），次要项目小块。比纯 1fr 1fr 更有编辑感。

---
对应 token：`motion.*`、`gradient.*`、`texture.*`、`font.role-mono-label`（见 `tokens.json`）。
