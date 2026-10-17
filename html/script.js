const badge = document.getElementById('mic-badge');
const text = document.getElementById('mic-text');
const nameEl = document.getElementById('player-name');
let hideTimer = null;

window.addEventListener('message', (event) => {
    const data = event.data;
    if (!data || data.action !== 'toggle') return;

    if (hideTimer) {
        clearTimeout(hideTimer);
        hideTimer = null;
    }

    if (data.playerName && nameEl) {
        nameEl.textContent = data.playerName;
    }

    if (data.active) {
        badge.classList.remove('hidden', 'ptt');
        text.textContent = 'MICRO ABIERTO';
    } else {
        badge.classList.remove('hidden');
        badge.classList.add('ptt');
        text.textContent = 'PTT';

        hideTimer = setTimeout(() => {
            badge.classList.add('hidden');
        }, 1200);
    }
});
