# Andika Noor Ismawan - E-Portfolio

Professional portfolio website showcasing projects, articles, and experience.

🌐 **Live Site:** https://andikanismawan.vercel.app/

## About

This is a modern, responsive e-portfolio built with HTML5, CSS3, and vanilla JavaScript. Features include:

- **16 Portfolio Projects** - Web applications, SaaS, Web3, IoT, and more
- **3 Research Articles** - Published in peer-reviewed journals (Sinta 3, Sinta 5)
- **Responsive Design** - Mobile-first with hamburger navigation
- **Interactive Modals** - Project details and article abstracts
- **CV Preview** - A4 aspect ratio with PDF download
- **Modern UX** - Smooth animations and transitions

## Tech Stack

- **Frontend:** HTML5, CSS3, JavaScript (vanilla)
- **Hosting:** Vercel (static site)
- **CI/CD:** Git push to auto-deploy

## Project Structure

Professional folder organization following industry standards:

```
src/
├── pages/              # HTML pages (8 files)
├── assets/
│   ├── images/        # Logo, profile, etc.
│   ├── styles/        # CSS files
│   ├── scripts/       # JavaScript files
│   └── cv-*.pdf      # CV document

dist/                  # Build output (Vercel)
docs/                  # Documentation
```

See [STRUCTURE.md](./STRUCTURE.md) for detailed layout.

## Features

### 📱 Responsive Design
- Mobile hamburger menu (< 480px)
- Fluid typography with CSS clamp()
- Touch-friendly interactive elements

### 🎨 Interactive Components
- **Project Modals** - Click cards to view features, tech stack, and descriptions
- **Article Modals** - Click cards to read abstracts and access papers
- **Smooth Animations** - Fade-in and slide-up effects
- **Keyboard Support** - ESC to close modals

### 📄 Pages

| Page | Route | Description |
|------|-------|-------------|
| Home | `/` | Portfolio overview |
| About | `/about` | Bio and introduction |
| Education | `/education` | Academic background |
| Experience | `/experience` | Work history |
| Projects | `/projects` | 16 portfolio items |
| Articles | `/articles` | Research publications |
| Contact | `/contact` | Contact information |
| CV | `/cv` | Downloadable resume |

### 🔗 Routing

Managed via `vercel.json`:
- `/articles` - Main articles page
- `/blog` - Redirects to `/articles` (backward compatibility)
- All other routes map to corresponding HTML files

## Development

### Local Preview

```bash
# Using Python
python -m http.server 8000

# Using Node.js
npx http-server

# Visit http://localhost:8000
```

### Deployment

Automatic deployment on git push:

```bash
git add -A
git commit -m "Update portfolio"
git push origin master
```

Vercel will automatically build and deploy to https://andikanismawan.vercel.app/

## Projects Included

**Web Applications & SaaS:**
- ExpertConnect (E-Commerce)
- LiveTips (Real-time tips platform)
- CeremonyHub (Event management)
- LearnHub (Online learning)
- FreelanceHub (Freelance marketplace)
- SmartCity (Urban IoT platform)
- FactoryPro (Production management)

**Emerging Tech:**
- CryptoVault (Web3 wallet)
- TokenBridge (Blockchain bridge)
- SmartHub (IoT platform)
- EscrowChain (Web3 escrow)

**Other Projects:**
- Digital Invite (Event invitations)
- TrackFleet (Fleet tracking)
- ForecastAI (AI predictions)
- GamePal (Gaming network)
- ConnectSphere (Social platform)
- KoperasiHub (Cooperative platform)
- StoreHub (Multi-store platform)

## Research Articles

1. **Hybrid Machine Learning for Project Risk Management** - Sinkron (Sinta 3)
2. **Comparative Analysis of SOA Reuse Strategies** - JUTIN (Sinta 5)
3. **COCO-SSD: Object Detection in Browser** - JRSIT

## File Structure Overview

```
e-portofolio/
├── src/pages/                  # Source HTML pages
├── src/assets/                 # Images, styles, scripts, CV
├── docs/                       # Documentation
├── dist/                       # Generated build output
├── vercel.json                 # Deployment config
├── README.md                   # This file
└── STRUCTURE.md               # Detailed structure guide
```

## Contributing

This is a personal portfolio. For suggestions or improvements, feel free to reach out via the contact page.

## License

Personal portfolio - All rights reserved

## Contact

📧 Email: [Available on contact page]
💼 LinkedIn: [Available on about page]
🐙 GitHub: https://github.com/Dinoxxc
🌐 Website: https://andikanismawan.vercel.app/

---

**Last Updated:** April 2026
**Deployment Status:** ✅ Active on Vercel
# Portfolio Updated Mon, Apr 13, 2026 11:50:01 PM
