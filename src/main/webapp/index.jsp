<!DOCTYPE html>
<html>

<head>
    <title>DevOps Deployment Dashboard</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #111827;
            color: white;
            margin: 0;
        }

        .container {
            width: 800px;
            margin: 80px auto;
        }

        .header {
            text-align: center;
            margin-bottom: 40px;
        }

        .header h1 {
            font-size: 38px;
        }

        .card {
            background: #1f2937;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.4);
        }

        .row {
            display: flex;
            justify-content: space-between;
            padding: 15px 0;
            border-bottom: 1px solid #374151;
        }

        .label {
            color: #9ca3af;
        }

        .status {
            color: #22c55e;
            font-weight: bold;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            color: #9ca3af;
        }
    </style>
</head>

<body>

<div class="container">

    <div class="header">
        <h1>DevOps Deployment Dashboard</h1>
        <p>Jenkins → Tomcat Deployment</p>
    </div>

    <div class="card">

        <div class="row">
            <span class="label">Application</span>
            <span>Jenkins Tomcat App</span>
        </div>

        <div class="row">
            <span class="label">Environment</span>
            <span>Production</span>
        </div>

        <div class="row">
            <span class="label">Version</span>
            <span>1.0</span>
        </div>

        <div class="row">
            <span class="label">Status</span>
            <span class="status">● RUNNING</span>
        </div>

        <div class="row">
            <span class="label">Deployment</span>
            <span>Jenkins CI/CD</span>
        </div>

        <div class="row">
            <span class="label">Application Server</span>
            <span>Apache Tomcat</span>
        </div>

    </div>

    <div class="footer">
        Automated deployment powered by Jenkins
    </div>

</div>

</body>

</html>
