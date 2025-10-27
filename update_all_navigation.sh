#!/bin/bash

echo "🔄 Updating navigation across all pages..."

# Update index.html
python3 << 'PYCODE'
with open('index.html', 'r') as file:
    content = file.read()

old_text = '''<li class="nav-item"><a href="pages/blog.html" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="programming-book.html" class="nav-link">Learn Coding</a></li>'''

new_text = '''<li class="nav-item"><a href="pages/blog.html" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="pages/resources.html" class="nav-link">Resources</a></li>
                <li class="nav-item"><a href="pages/store.html" class="nav-link">Store</a></li>
                <li class="nav-item"><a href="pages/partnerships.html" class="nav-link">Partnerships</a></li>
                <li class="nav-item"><a href="programming-book.html" class="nav-link">Learn Coding</a></li>'''

content = content.replace(old_text, new_text)

with open('index.html', 'w') as file:
    file.write(content)

print("✅ index.html navigation updated")
PYCODE

# Update pages directory files
python3 << 'PYCODE'
files = ['pages/services.html', 'pages/portfolio.html', 'pages/about.html', 'pages/contact.html', 'pages/blog.html']

for filename in files:
    try:
        with open(filename, 'r') as file:
            content = file.read()
        
        old_text = '''<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="../programming-book.html" class="nav-link">Learn Coding</a></li>'''
        
        new_text = '''<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="resources.html" class="nav-link">Resources</a></li>
                <li class="nav-item"><a href="store.html" class="nav-link">Store</a></li>
                <li class="nav-item"><a href="partnerships.html" class="nav-link">Partnerships</a></li>
                <li class="nav-item"><a href="../programming-book.html" class="nav-link">Learn Coding</a></li>'''
        
        content = content.replace(old_text, new_text)
        
        with open(filename, 'w') as file:
            file.write(content)
        
        print(f"✅ {filename} navigation updated")
    except Exception as e:
        print(f"⚠️ Could not update {filename}: {e}")
PYCODE

# Update dashboard and admin
python3 << 'PYCODE'
files = ['dashboard.html', 'admin.html']

for filename in files:
    try:
        with open(filename, 'r') as file:
            content = file.read()
        
        old_text = '''<li class="nav-item"><a href="pages/blog.html" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="programming-book.html" class="nav-link">Learn Coding</a></li>'''
        
        new_text = '''<li class="nav-item"><a href="pages/blog.html" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="pages/resources.html" class="nav-link">Resources</a></li>
                <li class="nav-item"><a href="pages/store.html" class="nav-link">Store</a></li>
                <li class="nav-item"><a href="pages/partnerships.html" class="nav-link">Partnerships</a></li>
                <li class="nav-item"><a href="programming-book.html" class="nav-link">Learn Coding</a></li>'''
        
        content = content.replace(old_text, new_text)
        
        with open(filename, 'w') as file:
            file.write(content)
        
        print(f"✅ {filename} navigation updated")
    except Exception as e:
        print(f"⚠️ Could not update {filename}: {e}")
PYCODE

# Create missing store.html
cat > pages/store.html << 'HTML'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Digital Products - Humbu Wandeme Digital</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <nav class="navbar">
        <div class="nav-container">
            <div class="logo">Humbu Wandeme Digital</div>
            <ul class="nav-menu">
                <li class="nav-item"><a href="../index.html" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="services.html" class="nav-link">Services</a></li>
                <li class="nav-item"><a href="portfolio.html" class="nav-link">Portfolio</a></li>
                <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
                <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="resources.html" class="nav-link">Resources</a></li>
                <li class="nav-item"><a href="store.html" class="nav-link active">Store</a></li>
                <li class="nav-item"><a href="partnerships.html" class="nav-link">Partnerships</a></li>
                <li class="nav-item"><a href="../payment-portal.html" class="nav-link">Payments</a></li>
                <li class="nav-item"><a href="../dashboard.html" class="nav-link btn">Client Portal</a></li>
            </ul>
        </div>
    </nav>

    <section class="hero">
        <div class="container">
            <h1>Digital Products & Templates</h1>
            <p>Ready-to-use solutions for your development needs</p>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <div class="services-grid">
                <div class="service-card">
                    <h3>🚀 Kubernetes Deployment Templates</h3>
                    <p>Production-ready K8s configurations for various applications</p>
                    <div class="price">R 299.00</div>
                    <a href="../payment-portal.html?product=kubernetes-templates&amount=29900" class="btn">Purchase Now</a>
                </div>
                
                <div class="service-card">
                    <h3>📚 AI Containerization Guide</h3>
                    <p>Complete guide to containerizing machine learning models</p>
                    <div class="price">R 199.00</div>
                    <a href="../payment-portal.html?product=ai-guide&amount=19900" class="btn">Purchase Now</a>
                </div>
                
                <div class="service-card">
                    <h3>🔧 DevOps Automation Scripts</h3>
                    <p>Bash and Python scripts for CI/CD automation</p>
                    <div class="price">R 149.00</div>
                    <a href="../payment-portal.html?product=devops-scripts&amount=14900" class="btn">Purchase Now</a>
                </div>
                
                <div class="service-card">
                    <h3>🌐 Website Template Bundle</h3>
                    <p>Professional business website templates</p>
                    <div class="price">R 399.00</div>
                    <a href="../payment-portal.html?product=website-templates&amount=39900" class="btn">Purchase Now</a>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
HTML

echo "✅ pages/store.html created successfully"

echo "🎉 All navigation updates completed!"
echo "📁 Updated files:"
echo "   - index.html"
echo "   - pages/services.html" 
echo "   - pages/portfolio.html"
echo "   - pages/about.html"
echo "   - pages/contact.html"
echo "   - pages/blog.html"
echo "   - dashboard.html"
echo "   - admin.html"
echo "   - Created pages/store.html"
