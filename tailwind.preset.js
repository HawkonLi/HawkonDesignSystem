/** Hawkon Personal Design System — Tailwind preset
 *  Usage: in tailwind.config.js -> module.exports = { presets: [require('./tailwind.preset.js')] }
 *  Semantic colors map to CSS vars from css/tokens.css, so dark mode follows [data-theme="dark"].
 */
module.exports = {
  theme: {
    extend: {
      colors: {
        airforce: { 50:'#EAF1F6',100:'#C9DCE8',200:'#9FBFD3',300:'#6E9BB8',400:'#41759A',500:'#1B4965',600:'#163C54',700:'#112F43',800:'#0C2232',900:'#071521' },
        sky: { 50:'#EEF7FC',100:'#D2EAF6',200:'#A9D6EC',300:'#7FC1E2',400:'#5FA8D3',500:'#3D8FC4',600:'#2E73A3',700:'#245A80',800:'#1A4260',900:'#102B40' },
        neutral: { 0:'#FFFFFF',50:'#F6F8FA',100:'#ECEFF3',200:'#DCE3EA',300:'#C2CCD6',400:'#97A3B0',500:'#6B7886',600:'#4E5A67',700:'#38424D',800:'#232B33',900:'#141A20',1000:'#0A0E12' },
        success: { 50:'#E8F5EE',300:'#79C9A2',500:'#2E9E6B',700:'#1E6B48' },
        warning: { 50:'#FCF3DF',300:'#F0CB66',500:'#E0A100',700:'#9A6F00' },
        error: { 50:'#FBEAEA',300:'#E88B8B',500:'#D64545',700:'#932929' },
        ember: { 50:'#FBEFE6',300:'#EFB084',500:'#E07A3F',700:'#A8501F' },
        // semantic (var-backed, theme-aware)
        canvas: 'var(--hk-bg-canvas)',
        surface: 'var(--hk-bg-surface)',
        'surface-raised': 'var(--hk-bg-surface-raised)',
        subtle: 'var(--hk-bg-subtle)',
        'text-primary': 'var(--hk-text-primary)',
        'text-secondary': 'var(--hk-text-secondary)',
        'text-tertiary': 'var(--hk-text-tertiary)',
        'on-accent': 'var(--hk-text-on-accent)',
        'border-default': 'var(--hk-border-default)',
        'border-strong': 'var(--hk-border-strong)',
        accent: 'var(--hk-accent-primary)',
        'accent-hover': 'var(--hk-accent-primary-hover)',
        'accent-2': 'var(--hk-accent-secondary)',
        ember: 'var(--hk-accent-ember)',
      },
      spacing: { 0:'0px',1:'4px',2:'8px',3:'12px',4:'16px',5:'24px',6:'32px',7:'48px',8:'64px',9:'96px' },
      borderRadius: { sm:'6px', md:'10px', lg:'16px', xl:'24px', full:'999px' },
      fontFamily: {
        sans: ['Inter','Noto Sans SC','PingFang SC','system-ui','sans-serif'],
        serif: ['Noto Serif SC','serif'],
        mono: ['JetBrains Mono','Roboto Mono','monospace'],
      },
      boxShadow: {
        'e1':'0 1px 1px rgba(16,24,40,.04), 0 2px 5px -3px rgba(16,24,40,.08)',
        'e2':'0 1px 1.5px rgba(16,24,40,.04), 0 8px 18px -10px rgba(16,24,40,.10)',
        'e3':'0 1px 2px rgba(16,24,40,.05), 0 16px 34px -14px rgba(16,24,40,.16)',
        'e4':'0 2px 4px rgba(16,24,40,.06), 0 28px 56px -20px rgba(16,24,40,.22)',
      },
      transitionTimingFunction: {
        'hk-out':'cubic-bezier(.4,0,.2,1)',
        'hk-in-out':'cubic-bezier(.65,0,.35,1)',
        'hk-spring':'cubic-bezier(.34,1.56,.64,1)',
      },
      transitionDuration: { 'fast':'150ms', 'base':'220ms', 'slow':'350ms' },
      backgroundImage: {
        'hk-hero':'linear-gradient(140deg,#0C2232,#163C54)',
        'hk-mark':'linear-gradient(150deg,#41759A,#163C54)',
        'hk-text':'linear-gradient(120deg,#1B4965,#5FA8D3)',
        'hk-glow-sky':'radial-gradient(circle,rgba(95,168,211,.5),transparent 62%)',
      },
    },
  },
};
