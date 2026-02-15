const API_BASE_URL = 'http://127.0.0.1:8001';
const API_KEY = 'PREMIUM_KEY_A1B2C3D4';

const HumbuAPI = {
    getInsights: async () => {
        const response = await fetch(`${API_BASE_URL}/api/ai/insights`, {
            headers: { 'Authorization': `Bearer ${API_KEY}` }
        });
        return await response.json();
    }
};

document.addEventListener('DOMContentLoaded', () => {
    HumbuAPI.getInsights().then(data => {
        console.log('Imperial Data Synced:', data);
        // This is where your dashboard updates with the 65% revenue stat
    });
});
