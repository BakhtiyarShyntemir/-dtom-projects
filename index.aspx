<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Проекты ДТОМ — НИШ</title>
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700&family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
<style>
  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

  :root {
    --nis-navy: #0d2145;
    --nis-blue: #1a3a6b;
    --nis-accent: #2d6bb5;
    --nis-light: #e8eef7;
    --nis-gold: #c8a84b;
    --white: #ffffff;
    --text-muted: #6b7a99;
    --border: rgba(255,255,255,0.12);
    --card-bg: #ffffff;
    --shadow: 0 4px 24px rgba(13,33,69,0.10);
  }

  body {
    font-family: 'PT Sans', sans-serif;
    background: #f4f6fb;
    color: #1a2540;
    min-height: 100vh;
  }

  /* LANG BAR */
  .lang-bar {
    background: var(--nis-navy);
    display: flex;
    justify-content: flex-end;
    padding: 8px 40px;
    gap: 6px;
  }
  .lang-btn {
    background: transparent;
    border: 1px solid rgba(255,255,255,0.25);
    color: rgba(255,255,255,0.7);
    font-family: 'PT Sans', sans-serif;
    font-size: 12px;
    padding: 3px 12px;
    border-radius: 3px;
    cursor: pointer;
    letter-spacing: 0.05em;
    transition: all 0.2s;
  }
  .lang-btn.active, .lang-btn:hover {
    background: rgba(255,255,255,0.15);
    color: #fff;
    border-color: rgba(255,255,255,0.5);
  }

  /* HERO BANNER */
  .hero {
    background: var(--nis-navy);
    padding: 48px 40px 56px;
    position: relative;
    overflow: hidden;
  }
  .hero::before {
    content: '';
    position: absolute;
    right: -80px; top: -80px;
    width: 400px; height: 400px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(45,107,181,0.25) 0%, transparent 70%);
    pointer-events: none;
  }
  .hero::after {
    content: '';
    position: absolute;
    left: 30%; bottom: -60px;
    width: 220px; height: 220px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(200,168,75,0.10) 0%, transparent 70%);
    pointer-events: none;
  }
  .hero-breadcrumb {
    font-size: 12px;
    color: rgba(255,255,255,0.45);
    letter-spacing: 0.08em;
    text-transform: uppercase;
    margin-bottom: 18px;
  }
  .hero-breadcrumb span { color: rgba(255,255,255,0.65); }
  .hero h1 {
    font-family: 'Raleway', sans-serif;
    font-size: 34px;
    font-weight: 700;
    color: #fff;
    line-height: 1.25;
    max-width: 680px;
    margin-bottom: 14px;
    position: relative;
    z-index: 1;
  }
  .hero-line {
    width: 52px; height: 3px;
    background: var(--nis-gold);
    border-radius: 2px;
    margin-bottom: 18px;
  }
  .hero p {
    color: rgba(255,255,255,0.72);
    font-size: 15px;
    max-width: 560px;
    line-height: 1.7;
    position: relative;
    z-index: 1;
  }
  .hero-stats {
    display: flex;
    gap: 32px;
    margin-top: 32px;
    position: relative;
    z-index: 1;
  }
  .hero-stat {
    text-align: center;
  }
  .hero-stat .num {
    font-family: 'Raleway', sans-serif;
    font-size: 28px;
    font-weight: 700;
    color: var(--nis-gold);
  }
  .hero-stat .lbl {
    font-size: 11px;
    color: rgba(255,255,255,0.5);
    letter-spacing: 0.06em;
    text-transform: uppercase;
    margin-top: 2px;
  }

  /* FILTERS */
  .filters {
    background: var(--white);
    border-bottom: 1px solid #e2e8f0;
    padding: 0 40px;
    display: flex;
    gap: 0;
    overflow-x: auto;
  }
  .filter-btn {
    background: transparent;
    border: none;
    border-bottom: 3px solid transparent;
    padding: 16px 20px 13px;
    font-family: 'PT Sans', sans-serif;
    font-size: 14px;
    color: #6b7a99;
    cursor: pointer;
    white-space: nowrap;
    transition: all 0.18s;
  }
  .filter-btn.active {
    color: var(--nis-navy);
    border-bottom-color: var(--nis-navy);
    font-weight: 700;
  }
  .filter-btn:hover { color: var(--nis-blue); }

  /* MAIN CONTENT */
  .main { padding: 36px 40px 60px; }

  .section-label {
    font-size: 11px;
    letter-spacing: 0.10em;
    text-transform: uppercase;
    color: var(--text-muted);
    margin-bottom: 20px;
    font-weight: 700;
  }

  /* PROJECTS GRID */
  .projects-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
    gap: 20px;
    margin-bottom: 48px;
  }

  .project-card {
    background: var(--white);
    border-radius: 10px;
    box-shadow: var(--shadow);
    overflow: hidden;
    cursor: pointer;
    transition: transform 0.2s, box-shadow 0.2s;
    border: 1px solid #e8eef7;
    display: flex;
    flex-direction: column;
  }
  .project-card:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 36px rgba(13,33,69,0.15);
  }
  .card-top {
    background: var(--nis-navy);
    padding: 22px 24px 18px;
    position: relative;
    overflow: hidden;
    min-height: 100px;
  }
  .card-top::after {
    content: '';
    position: absolute;
    right: -20px; bottom: -30px;
    width: 100px; height: 100px;
    border-radius: 50%;
    background: rgba(255,255,255,0.04);
  }
  .card-top .status-pill {
    display: inline-block;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 0.07em;
    text-transform: uppercase;
    padding: 3px 10px;
    border-radius: 20px;
    margin-bottom: 10px;
  }
  .status-active { background: rgba(46,196,134,0.18); color: #2ec486; }
  .status-review { background: rgba(255,183,77,0.18); color: #ffb74d; }
  .status-done   { background: rgba(100,149,237,0.18); color: #87b4ff; }
  .status-plan   { background: rgba(200,168,75,0.15); color: var(--nis-gold); }

  .card-top h2 {
    font-family: 'Raleway', sans-serif;
    font-size: 16px;
    font-weight: 700;
    color: #fff;
    line-height: 1.35;
  }
  .card-body { padding: 18px 24px 20px; flex: 1; display: flex; flex-direction: column; }
  .card-desc {
    font-size: 13.5px;
    color: #4a5578;
    line-height: 1.65;
    flex: 1;
    margin-bottom: 16px;
  }
  .card-meta {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 8px;
  }
  .meta-item .meta-label {
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.07em;
    color: #a0aabf;
    margin-bottom: 2px;
    font-weight: 700;
  }
  .meta-item .meta-value {
    font-size: 13px;
    color: #1a2540;
    font-weight: 600;
  }
  .card-footer {
    padding: 12px 24px;
    border-top: 1px solid #edf0f7;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .card-dept {
    font-size: 12px;
    color: var(--text-muted);
  }
  .card-arrow {
    width: 30px; height: 30px;
    background: var(--nis-light);
    border-radius: 50%;
    display: flex; align-items: center; justify-content: center;
    transition: background 0.2s;
  }
  .project-card:hover .card-arrow { background: var(--nis-navy); }
  .card-arrow svg { transition: stroke 0.2s; stroke: var(--nis-navy); }
  .project-card:hover .card-arrow svg { stroke: #fff; }

  /* DETAIL VIEW */
  .detail-view { display: none; }
  .detail-view.open { display: block; }

  .back-row {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 28px;
  }
  .back-btn {
    display: flex;
    align-items: center;
    gap: 6px;
    background: transparent;
    border: 1px solid #d1d9ec;
    border-radius: 6px;
    padding: 7px 14px;
    font-family: 'PT Sans', sans-serif;
    font-size: 13px;
    color: var(--nis-blue);
    cursor: pointer;
    transition: all 0.18s;
  }
  .back-btn:hover { background: var(--nis-light); }

  .detail-hero {
    background: var(--nis-navy);
    border-radius: 12px;
    padding: 36px 40px;
    margin-bottom: 24px;
    position: relative;
    overflow: hidden;
  }
  .detail-hero::before {
    content: '';
    position: absolute;
    right: 0; top: 0; bottom: 0;
    width: 260px;
    background: linear-gradient(135deg, rgba(45,107,181,0.30), rgba(13,33,69,0));
  }
  .detail-hero .status-pill { margin-bottom: 12px; }
  .detail-hero h1 {
    font-family: 'Raleway', sans-serif;
    font-size: 26px;
    font-weight: 700;
    color: #fff;
    margin-bottom: 10px;
    max-width: 640px;
    line-height: 1.3;
  }
  .detail-hero p {
    color: rgba(255,255,255,0.70);
    font-size: 14.5px;
    line-height: 1.7;
    max-width: 580px;
  }

  .detail-grid {
    display: grid;
    grid-template-columns: 2fr 1fr;
    gap: 20px;
    margin-bottom: 24px;
  }

  .detail-card {
    background: var(--white);
    border-radius: 10px;
    box-shadow: var(--shadow);
    border: 1px solid #e8eef7;
    overflow: hidden;
  }
  .detail-card-header {
    padding: 16px 24px;
    border-bottom: 1px solid #edf0f7;
    font-family: 'Raleway', sans-serif;
    font-size: 14px;
    font-weight: 700;
    color: var(--nis-navy);
    letter-spacing: 0.02em;
  }
  .detail-card-body { padding: 20px 24px; }

  .info-table { width: 100%; border-collapse: collapse; }
  .info-table tr { border-bottom: 1px solid #f0f3f9; }
  .info-table tr:last-child { border-bottom: none; }
  .info-table td { padding: 11px 0; font-size: 13.5px; }
  .info-table td:first-child { color: var(--text-muted); width: 42%; font-size: 12.5px; }
  .info-table td:last-child { color: #1a2540; font-weight: 600; }

  .progress-bar-wrap {
    background: #edf0f7;
    border-radius: 6px;
    height: 8px;
    margin-top: 6px;
    overflow: hidden;
  }
  .progress-bar-fill {
    height: 100%;
    border-radius: 6px;
    background: linear-gradient(90deg, var(--nis-accent), var(--nis-gold));
    transition: width 0.8s ease;
  }

  .doc-item {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 11px 0;
    border-bottom: 1px solid #f0f3f9;
  }
  .doc-item:last-child { border-bottom: none; }
  .doc-icon {
    width: 36px; height: 36px;
    border-radius: 8px;
    display: flex; align-items: center; justify-content: center;
    font-size: 10px; font-weight: 700; letter-spacing: 0.04em;
    flex-shrink: 0;
  }
  .icon-pdf { background: #fdecea; color: #c0392b; }
  .icon-xlsx { background: #e8f5e9; color: #2e7d32; }
  .icon-docx { background: #e3f2fd; color: #1565c0; }
  .icon-pptx { background: #fff3e0; color: #e65100; }
  .doc-name { flex: 1; font-size: 13.5px; color: #1a2540; }
  .doc-meta { font-size: 11.5px; color: var(--text-muted); }

  /* TABS */
  .tabs-row {
    display: flex;
    gap: 0;
    border-bottom: 1px solid #e2e8f0;
    margin-bottom: 0;
    background: var(--white);
    border-radius: 10px 10px 0 0;
    padding: 0 8px;
    overflow: hidden;
  }
  .tab-btn {
    background: none;
    border: none;
    border-bottom: 3px solid transparent;
    padding: 14px 20px 11px;
    font-family: 'PT Sans', sans-serif;
    font-size: 13.5px;
    color: #6b7a99;
    cursor: pointer;
    transition: all 0.18s;
    white-space: nowrap;
  }
  .tab-btn.active {
    color: var(--nis-navy);
    border-bottom-color: var(--nis-navy);
    font-weight: 700;
  }
  .tab-panel { display: none; }
  .tab-panel.active { display: block; }
  .tabs-card {
    background: var(--white);
    border-radius: 0 0 10px 10px;
    box-shadow: var(--shadow);
    border: 1px solid #e8eef7;
    border-top: none;
    padding: 24px;
  }

  /* Sidebar info card */
  .sidebar-stat {
    background: var(--nis-light);
    border-radius: 8px;
    padding: 14px 16px;
    margin-bottom: 12px;
  }
  .sidebar-stat .s-label { font-size: 11px; text-transform: uppercase; letter-spacing: 0.07em; color: var(--text-muted); font-weight: 700; margin-bottom: 4px; }
  .sidebar-stat .s-value { font-family: 'Raleway', sans-serif; font-size: 20px; font-weight: 700; color: var(--nis-navy); }
  .sidebar-stat .s-sub { font-size: 12px; color: var(--text-muted); margin-top: 2px; }

  /* HIDDEN CLASS */
  .hidden { display: none !important; }

  /* RESPONSIVE */
  @media (max-width: 760px) {
    .hero, .main, .filters { padding-left: 16px; padding-right: 16px; }
    .hero h1 { font-size: 22px; }
    .hero-stats { gap: 18px; }
    .detail-grid { grid-template-columns: 1fr; }
    .projects-grid { grid-template-columns: 1fr; }
  }
</style>
</head>
<body>

<!-- LANG BAR -->
<div class="lang-bar">
  <button class="lang-btn active" onclick="setLang('ru')">РУС</button>
  <button class="lang-btn" onclick="setLang('kz')">ҚАЗ</button>
</div>

<!-- LIST VIEW -->
<div id="list-view">

  <!-- HERO -->
  <div class="hero">
    <div class="hero-breadcrumb">ДТОМ — НИШ &nbsp;/&nbsp; <span id="bc-label">Проекты</span></div>
    <h1 id="hero-title">Проекты Департамента трансляции опыта</h1>
    <div class="hero-line"></div>
    <p id="hero-desc">Реализуемые и завершённые проекты ДТОМ по распространению педагогических практик НИШ в школах Казахстана.</p>
    <div class="hero-stats">
      <div class="hero-stat">
        <div class="num" id="stat-active">3</div>
        <div class="lbl" id="stat-active-lbl">Активных</div>
      </div>
      <div class="hero-stat">
        <div class="num">1</div>
        <div class="lbl" id="stat-review-lbl">На проверке</div>
      </div>
      <div class="hero-stat">
        <div class="num">1</div>
        <div class="lbl" id="stat-done-lbl">Завершённых</div>
      </div>
    </div>
  </div>

  <!-- FILTERS -->
  <div class="filters">
    <button class="filter-btn active" onclick="filterProjects('all', this)" data-label-ru="Все проекты" data-label-kz="Барлық жобалар">Все проекты</button>
    <button class="filter-btn" onclick="filterProjects('active', this)" data-label-ru="Активные" data-label-kz="Белсенді">Активные</button>
    <button class="filter-btn" onclick="filterProjects('review', this)" data-label-ru="На проверке" data-label-kz="Тексеруде">На проверке</button>
    <button class="filter-btn" onclick="filterProjects('done', this)" data-label-ru="Завершённые" data-label-kz="Аяқталған">Завершённые</button>
  </div>

  <!-- PROJECTS -->
  <div class="main">
    <div class="section-label" id="grid-label">Все проекты — 5</div>
    <div class="projects-grid" id="projects-grid"></div>
  </div>

</div><!-- /list-view -->

<!-- DETAIL VIEW -->
<div id="detail-view" class="detail-view">
  <div class="main">
    <div class="back-row">
      <button class="back-btn" onclick="showList()">
        <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9 2L4 7L9 12" stroke="#1a3a6b" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg>
        <span id="back-label">Назад к проектам</span>
      </button>
    </div>

    <div class="detail-hero">
      <div class="status-pill" id="d-status"></div>
      <h1 id="d-title"></h1>
      <p id="d-desc"></p>
    </div>

    <div class="detail-grid">
      <!-- LEFT: TABS -->
      <div>
        <div class="tabs-row">
          <button class="tab-btn active" onclick="switchTab('info')" id="tab-info-btn">Обзор</button>
          <button class="tab-btn" onclick="switchTab('docs')" id="tab-docs-btn">Документация</button>
          <button class="tab-btn" onclick="switchTab('team')" id="tab-team-btn">Команда</button>
        </div>
        <div class="tabs-card">
          <!-- INFO TAB -->
          <div class="tab-panel active" id="tab-info">
            <table class="info-table" id="info-table"></table>
            <div style="margin-top:20px;">
              <div style="font-size:12px;text-transform:uppercase;letter-spacing:.07em;color:#a0aabf;font-weight:700;margin-bottom:8px;" id="progress-label">Прогресс выполнения</div>
              <div style="display:flex;align-items:center;gap:12px;">
                <div class="progress-bar-wrap" style="flex:1;"><div class="progress-bar-fill" id="progress-fill" style="width:0%"></div></div>
                <span style="font-size:14px;font-weight:700;color:var(--nis-navy);" id="progress-pct"></span>
              </div>
            </div>
          </div>
          <!-- DOCS TAB -->
          <div class="tab-panel" id="tab-docs">
            <div id="doc-list"></div>
          </div>
          <!-- TEAM TAB -->
          <div class="tab-panel" id="tab-team">
            <div id="team-list"></div>
          </div>
        </div>
      </div>

      <!-- RIGHT: SIDEBAR -->
      <div>
        <div class="detail-card" style="margin-bottom:16px;">
          <div class="detail-card-header" id="sidebar-title">Ключевые показатели</div>
          <div class="detail-card-body" id="sidebar-stats"></div>
        </div>
      </div>
    </div>
  </div>
</div><!-- /detail-view -->

<script>
const lang = { current: 'ru' };

const i18n = {
  ru: {
    heroTitle: 'Проекты Департамента трансляции опыта',
    heroDesc: 'Реализуемые и завершённые проекты ДТОМ по распространению педагогических практик НИШ в школах Казахстана.',
    bcLabel: 'Проекты',
    backLabel: 'Назад к проектам',
    statActive: 'Активных',
    statReview: 'На проверке',
    statDone: 'Завершённых',
    gridAll: 'Все проекты',
    tabInfo: 'Обзор',
    tabDocs: 'Документация',
    tabTeam: 'Команда',
    openBtn: 'Открыть',
    sidebarTitle: 'Ключевые показатели',
    progressLabel: 'Прогресс выполнения',
    statuses: { active: 'Активный', review: 'На проверке', done: 'Завершён', plan: 'Планирование' },
    filterAll: 'Все проекты', filterActive: 'Активные', filterReview: 'На проверке', filterDone: 'Завершённые',
    infoLabels: { manager: 'Руководитель проекта', dept: 'Подразделение', start: 'Дата начала', end: 'Срок завершения', budget: 'Бюджет', partner: 'Партнёр/Заказчик', coverage: 'Охват' },
    teamRole: { lead: 'Руководитель', expert: 'Эксперт', analyst: 'Аналитик', coordinator: 'Координатор' },
    docUpdated: 'Обновлено',
  },
  kz: {
    heroTitle: 'Тәжірибені трансляциялау департаментінің жобалары',
    heroDesc: 'ҰМ педагогикалық тәжірибелерін Қазақстан мектептеріне таратуға арналған ТТД іске асырылатын және аяқталған жобалары.',
    bcLabel: 'Жобалар',
    backLabel: 'Жобаларға оралу',
    statActive: 'Белсенді',
    statReview: 'Тексеруде',
    statDone: 'Аяқталған',
    gridAll: 'Барлық жобалар',
    tabInfo: 'Шолу',
    tabDocs: 'Құжаттама',
    tabTeam: 'Топ',
    openBtn: 'Ашу',
    sidebarTitle: 'Негізгі көрсеткіштер',
    progressLabel: 'Орындалу барысы',
    statuses: { active: 'Белсенді', review: 'Тексеруде', done: 'Аяқталды', plan: 'Жоспарлауда' },
    filterAll: 'Барлық жобалар', filterActive: 'Белсенді', filterReview: 'Тексеруде', filterDone: 'Аяқталған',
    infoLabels: { manager: 'Жоба жетекшісі', dept: 'Бөлімше', start: 'Басталу күні', end: 'Аяқталу мерзімі', budget: 'Бюджет', partner: 'Серіктес/Тапсырысшы', coverage: 'Қамту' },
    teamRole: { lead: 'Жетекші', expert: 'Сарапшы', analyst: 'Аналитик', coordinator: 'Үйлестіруші' },
    docUpdated: 'Жаңартылды',
  }
};

const projects = [
  {
    id: 1,
    status: 'active',
    progress: 65,
    ru: {
      name: 'Развитие потенциала опорных школ в сельской местности',
      desc: 'Системная поддержка сельских опорных школ через внедрение педагогических практик НИШ, обучение педагогов и создание сети профессиональных сообществ.',
      dept: 'ДТОМ / Отдел методической поддержки',
      manager: 'Шынтемір Бахтияр Саматұлы',
      partner: 'МОН РК',
      coverage: '14 регионов / 120 школ',
    },
    kz: {
      name: 'Ауылдық аймақтардағы тірек мектептерінің әлеуетін дамыту',
      desc: 'ҰМ педагогикалық тәжірибелерін енгізу, мұғалімдерді оқыту және кәсіби қауымдастықтар желісін құру арқылы ауылдық тірек мектептерін жүйелі қолдау.',
      dept: 'ТТД / Әдістемелік қолдау бөлімі',
      manager: 'Шынтемір Бахтияр Саматұлы',
      partner: 'ҚР БҒМ',
      coverage: '14 өңір / 120 мектеп',
    },
    start: '01.09.2024', end: '31.08.2026', budget: '₸ 180 000 000',
    docs: [
      { type: 'pdf', name: 'Концепция проекта.pdf', date: '05.09.2024', size: '3.2 МБ' },
      { type: 'docx', name: 'Дорожная карта 2025.docx', date: '10.01.2025', size: '1.8 МБ' },
      { type: 'xlsx', name: 'Мониторинг охвата.xlsx', date: '01.04.2026', size: '2.1 МБ' },
      { type: 'pptx', name: 'Презентация для МОН.pptx', date: '15.03.2026', size: '12.4 МБ' },
    ],
    team: [
      { name: 'Шынтемір Бахтияр', role: 'lead', email: 'shyntemir_b@nis.edu.kz' },
      { name: 'Идришева Зухра', role: 'expert', email: 'idrisheva_z@nis.edu.kz' },
      { name: 'Бейбітова Динара', role: 'coordinator', email: 'beibitova_d@nis.edu.kz' },
    ],
    sidebar: [
      { label_ru: 'Охват школ', label_kz: 'Мектеп қамту', value: '120', sub_ru: 'из 300 целевых', sub_kz: '300 мақсаттан' },
      { label_ru: 'Обучено педагогов', label_kz: 'Оқытылған мұғалімдер', value: '1 840', sub_ru: 'за 2024–2025 гг.', sub_kz: '2024–2025 жж.' },
    ]
  },
  {
    id: 2,
    status: 'active',
    progress: 40,
    ru: {
      name: 'Центры инноваций НИШ',
      desc: 'Создание и развитие региональных центров инноваций на базе школ НИШ для трансляции лучших практик в систему образования Казахстана.',
      dept: 'ДТОМ / Отдел инноваций',
      manager: 'Пірмаханбет Жақсылық',
      partner: 'АО «НИШ»',
      coverage: '20 городов',
    },
    kz: {
      name: 'ҰМ инновация орталықтары',
      desc: 'Қазақстан білім беру жүйесіне үздік тәжірибелерді трансляциялау үшін ҰМ мектептері базасында өңірлік инновация орталықтарын құру және дамыту.',
      dept: 'ТТД / Инновациялар бөлімі',
      manager: 'Пірмаханбет Жақсылық',
      partner: '«ҰМ» АҚ',
      coverage: '20 қала',
    },
    start: '01.01.2025', end: '31.12.2026', budget: '₸ 95 000 000',
    docs: [
      { type: 'docx', name: 'Положение о центрах.docx', date: '15.01.2025', size: '890 КБ' },
      { type: 'xlsx', name: 'План открытия центров.xlsx', date: '20.02.2025', size: '540 КБ' },
    ],
    team: [
      { name: 'Пірмаханбет Жақсылық', role: 'lead', email: 'pirmahanbet_zh@nis.edu.kz' },
      { name: 'Бейбітова Динара', role: 'analyst', email: 'beibitova_d@nis.edu.kz' },
    ],
    sidebar: [
      { label_ru: 'Открыто центров', label_kz: 'Ашылған орталықтар', value: '8', sub_ru: 'из 20 запланированных', sub_kz: '20 жоспарланғаннан' },
      { label_ru: 'Мероприятий', label_kz: 'Іс-шаралар', value: '47', sub_ru: 'проведено в 2025 г.', sub_kz: '2025 жылы өткізілген' },
    ]
  },
  {
    id: 3,
    status: 'active',
    progress: 55,
    ru: {
      name: 'Платформа "Beyim Ustaz"',
      desc: 'Цифровая платформа для профессионального развития педагогов: онлайн-курсы, сообщества практики, база методических ресурсов НИШ.',
      dept: 'ДТОМ / Цифровые проекты',
      manager: 'Идришева Зухра Ерлановна',
      partner: 'МТС Казахстан',
      coverage: 'Вся страна',
    },
    kz: {
      name: '"Beyim Ustaz" платформасы',
      desc: 'Мұғалімдердің кәсіби дамуына арналған цифрлық платформа: онлайн курстар, тәжірибе қауымдастықтары, ҰМ әдістемелік ресурстарының базасы.',
      dept: 'ТТД / Цифрлық жобалар',
      manager: 'Идришева Зухра Ерлановна',
      partner: 'МТС Қазақстан',
      coverage: 'Бүкіл ел',
    },
    start: '01.03.2024', end: '28.02.2026', budget: '₸ 62 000 000',
    docs: [
      { type: 'pdf', name: 'Техническое задание.pdf', date: '10.03.2024', size: '4.5 МБ' },
      { type: 'xlsx', name: 'KPI платформы.xlsx', date: '15.03.2026', size: '720 КБ' },
      { type: 'pptx', name: 'Демо платформы.pptx', date: '20.02.2026', size: '18.2 МБ' },
    ],
    team: [
      { name: 'Идришева Зухра', role: 'lead', email: 'idrisheva_z@nis.edu.kz' },
      { name: 'Пірмаханбет Жақсылық', role: 'expert', email: 'pirmahanbet_zh@nis.edu.kz' },
    ],
    sidebar: [
      { label_ru: 'Зарегистрировано', label_kz: 'Тіркелген', value: '24 500', sub_ru: 'педагогов', sub_kz: 'мұғалім' },
      { label_ru: 'Курсов', label_kz: 'Курстар', value: '380', sub_ru: 'активных курсов', sub_kz: 'белсенді курс' },
    ]
  },
  {
    id: 4,
    status: 'review',
    progress: 90,
    ru: {
      name: 'Концепция трансляции опыта НИШ',
      desc: 'Разработка актуализированной концепции трансляции педагогического опыта НИШ на 2026–2030 годы с учётом новых приоритетов государственной образовательной политики.',
      dept: 'ДТОМ / Стратегическое планирование',
      manager: 'Пірмаханбет Жақсылық',
      partner: 'МОН РК / НЦОКО',
      coverage: 'Системный уровень',
    },
    kz: {
      name: 'ҰМ тәжірибесін трансляциялау тұжырымдамасы',
      desc: '2026–2030 жылдарға арналған ҰМ педагогикалық тәжірибесін трансляциялаудың жаңартылған тұжырымдамасын мемлекеттік білім беру саясатының жаңа басымдықтарын ескере отырып әзірлеу.',
      dept: 'ТТД / Стратегиялық жоспарлау',
      manager: 'Пірмаханбет Жақсылық',
      partner: 'ҚР БҒМ / ҰБЖО',
      coverage: 'Жүйелік деңгей',
    },
    start: '01.06.2025', end: '30.06.2026', budget: '₸ 18 000 000',
    docs: [
      { type: 'docx', name: 'Черновик концепции v3.docx', date: '02.04.2026', size: '2.3 МБ' },
      { type: 'pdf', name: 'Анализ международного опыта.pdf', date: '10.11.2025', size: '6.1 МБ' },
    ],
    team: [
      { name: 'Пірмаханбет Жақсылық', role: 'lead', email: 'pirmahanbet_zh@nis.edu.kz' },
      { name: 'Шынтемір Бахтияр', role: 'analyst', email: 'shyntemir_b@nis.edu.kz' },
      { name: 'Идришева Зухра', role: 'expert', email: 'idrisheva_z@nis.edu.kz' },
    ],
    sidebar: [
      { label_ru: 'Страниц', label_kz: 'Бет', value: '112', sub_ru: 'в финальной версии', sub_kz: 'қорытынды нұсқада' },
      { label_ru: 'Согласований', label_kz: 'Келісімдер', value: '4/5', sub_ru: 'пройдено этапов', sub_kz: 'кезең өтілді' },
    ]
  },
  {
    id: 5,
    status: 'done',
    progress: 100,
    ru: {
      name: 'Келешек мектептері',
      desc: 'Программа по созданию партнёрских школ будущего в регионах Казахстана с использованием модели НИШ как основы для проектирования образовательной среды.',
      dept: 'ДТОМ / Партнёрские программы',
      manager: 'Бейбітова Динара Бахытжановна',
      partner: 'Акимат г. Нур-Султан',
      coverage: '5 пилотных школ',
    },
    kz: {
      name: 'Келешек мектептері',
      desc: 'Білім беру ортасын жобалауда ҰМ моделін негіз ретінде пайдалана отырып, Қазақстан өңірлерінде серіктестік болашақ мектептерін құру бағдарламасы.',
      dept: 'ТТД / Серіктестік бағдарламалары',
      manager: 'Бейбітова Динара Бахытжановна',
      partner: 'Нұр-Сұлтан қ. Әкімдігі',
      coverage: '5 пилоттық мектеп',
    },
    start: '01.09.2022', end: '31.08.2024', budget: '₸ 230 000 000',
    docs: [
      { type: 'pdf', name: 'Итоговый отчёт проекта.pdf', date: '15.09.2024', size: '9.8 МБ' },
      { type: 'xlsx', name: 'Отчёт по KPI.xlsx', date: '10.09.2024', size: '1.4 МБ' },
      { type: 'docx', name: 'Акт завершения.docx', date: '01.09.2024', size: '650 КБ' },
    ],
    team: [
      { name: 'Бейбітова Динара', role: 'lead', email: 'beibitova_d@nis.edu.kz' },
      { name: 'Шынтемір Бахтияр', role: 'coordinator', email: 'shyntemir_b@nis.edu.kz' },
    ],
    sidebar: [
      { label_ru: 'Охвачено учеников', label_kz: 'Қамтылған оқушылар', value: '3 200', sub_ru: 'за период проекта', sub_kz: 'жоба кезеңінде' },
      { label_ru: 'Педагогов обучено', label_kz: 'Оқытылған мұғалімдер', value: '420', sub_ru: 'в 5 школах', sub_kz: '5 мектепте' },
    ]
  },
];

let currentFilter = 'all';
let currentProject = null;

function tr() { return i18n[lang.current]; }

function setLang(l) {
  lang.current = l;
  document.querySelectorAll('.lang-btn').forEach(b => b.classList.remove('active'));
  event.target.classList.add('active');
  applyLang();
  if (currentProject !== null) renderDetail(currentProject);
  else renderList();
}

function applyLang() {
  const t = tr();
  document.getElementById('hero-title').textContent = t.heroTitle;
  document.getElementById('hero-desc').textContent = t.heroDesc;
  document.getElementById('bc-label').textContent = t.bcLabel;
  document.getElementById('back-label').textContent = t.backLabel;
  document.getElementById('stat-active-lbl').textContent = t.statActive;
  document.getElementById('stat-review-lbl').textContent = t.statReview;
  document.getElementById('stat-done-lbl').textContent = t.statDone;
  document.getElementById('tab-info-btn').textContent = t.tabInfo;
  document.getElementById('tab-docs-btn').textContent = t.tabDocs;
  document.getElementById('tab-team-btn').textContent = t.tabTeam;
  document.getElementById('sidebar-title').textContent = t.sidebarTitle;
  document.getElementById('progress-label').textContent = t.progressLabel;
  document.querySelectorAll('.filter-btn').forEach(btn => {
    const key = btn.getAttribute('data-label-' + lang.current);
    if (key) btn.textContent = key;
  });
}

function statusClass(s) {
  return { active: 'status-active', review: 'status-review', done: 'status-done', plan: 'status-plan' }[s];
}

function renderList() {
  const t = tr();
  const filtered = currentFilter === 'all' ? projects : projects.filter(p => p.status === currentFilter);
  const label = currentFilter === 'all' ? t.filterAll : (
    currentFilter === 'active' ? t.filterActive :
    currentFilter === 'review' ? t.filterReview : t.filterDone
  );
  document.getElementById('grid-label').textContent = label + ' — ' + filtered.length;

  document.getElementById('projects-grid').innerHTML = filtered.map(p => {
    const d = p[lang.current];
    return `<div class="project-card" onclick="openProject(${p.id})">
      <div class="card-top">
        <div class="status-pill ${statusClass(p.status)}">${t.statuses[p.status]}</div>
        <h2>${d.name}</h2>
      </div>
      <div class="card-body">
        <p class="card-desc">${d.desc}</p>
        <div class="card-meta">
          <div class="meta-item">
            <div class="meta-label">${t.infoLabels.start}</div>
            <div class="meta-value">${p.start}</div>
          </div>
          <div class="meta-item">
            <div class="meta-label">${t.infoLabels.end}</div>
            <div class="meta-value">${p.end}</div>
          </div>
          <div class="meta-item">
            <div class="meta-label">${t.infoLabels.budget}</div>
            <div class="meta-value">${p.budget}</div>
          </div>
          <div class="meta-item">
            <div class="meta-label">${t.infoLabels.coverage}</div>
            <div class="meta-value">${d.coverage}</div>
          </div>
        </div>
      </div>
      <div class="card-footer">
        <span class="card-dept">${d.dept.split('/')[0].trim()}</span>
        <div class="card-arrow">
          <svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M5 2L10 7L5 12" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </div>
      </div>
    </div>`;
  }).join('');
}

function filterProjects(f, btn) {
  currentFilter = f;
  document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
  btn.classList.add('active');
  renderList();
}

function openProject(id) {
  currentProject = id;
  renderDetail(id);
  document.getElementById('list-view').style.display = 'none';
  document.getElementById('detail-view').classList.add('open');
  window.scrollTo(0, 0);
  switchTab('info');
}

function showList() {
  currentProject = null;
  document.getElementById('list-view').style.display = '';
  document.getElementById('detail-view').classList.remove('open');
  renderList();
}

function renderDetail(id) {
  const p = projects.find(x => x.id === id);
  const d = p[lang.current];
  const t = tr();

  document.getElementById('d-status').textContent = t.statuses[p.status];
  document.getElementById('d-status').className = 'status-pill ' + statusClass(p.status);
  document.getElementById('d-title').textContent = d.name;
  document.getElementById('d-desc').textContent = d.desc;

  // INFO TABLE
  document.getElementById('info-table').innerHTML = [
    [t.infoLabels.manager, d.manager],
    [t.infoLabels.dept, d.dept],
    [t.infoLabels.start, p.start],
    [t.infoLabels.end, p.end],
    [t.infoLabels.budget, p.budget],
    [t.infoLabels.partner, d.partner],
    [t.infoLabels.coverage, d.coverage],
  ].map(([l, v]) => `<tr><td>${l}</td><td>${v}</td></tr>`).join('');

  // PROGRESS
  document.getElementById('progress-label').textContent = t.progressLabel;
  setTimeout(() => { document.getElementById('progress-fill').style.width = p.progress + '%'; }, 100);
  document.getElementById('progress-pct').textContent = p.progress + '%';

  // DOCS
  document.getElementById('doc-list').innerHTML = p.docs.map(doc => `
    <div class="doc-item">
      <div class="doc-icon icon-${doc.type}">${doc.type.toUpperCase()}</div>
      <div style="flex:1;">
        <div class="doc-name">${doc.name}</div>
        <div class="doc-meta">${t.docUpdated}: ${doc.date} · ${doc.size}</div>
      </div>
    </div>`).join('');

  // TEAM
  document.getElementById('team-list').innerHTML = p.team.map(m => `
    <div style="display:flex;align-items:center;gap:12px;padding:12px 0;border-bottom:1px solid #f0f3f9;">
      <div style="width:40px;height:40px;border-radius:50%;background:var(--nis-navy);display:flex;align-items:center;justify-content:center;font-family:'Raleway',sans-serif;font-size:13px;font-weight:700;color:#fff;flex-shrink:0;">
        ${m.name.split(' ').map(n=>n[0]).join('').slice(0,2)}
      </div>
      <div>
        <div style="font-size:14px;font-weight:600;color:#1a2540;">${m.name}</div>
        <div style="font-size:12px;color:var(--text-muted);">${t.teamRole[m.role]} · <a href="mailto:${m.email}" style="color:var(--nis-accent);text-decoration:none;">${m.email}</a></div>
      </div>
    </div>`).join('');

  // SIDEBAR STATS
  document.getElementById('sidebar-stats').innerHTML = p.sidebar.map(s => `
    <div class="sidebar-stat">
      <div class="s-label">${s['label_' + lang.current]}</div>
      <div class="s-value">${s.value}</div>
      <div class="s-sub">${s['sub_' + lang.current]}</div>
    </div>`).join('');
}

function switchTab(tab) {
  ['info', 'docs', 'team'].forEach(t => {
    document.getElementById('tab-' + t + '-btn').classList.toggle('active', t === tab);
    document.getElementById('tab-' + t).classList.toggle('active', t === tab);
  });
}

// INIT
applyLang();
renderList();
</script>
</body>
</html>
