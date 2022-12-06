#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
AWS_INSTANCE_ID=`curl -s http://169.254.169.254/latest/meta-data/instance-id`
HOSTNAME=`curl -s http://169.254.169.254/latest/meta-data/hostname`

cat > index.html << EOF
    <html>
        <head>
            <title>Terraform In Action</title>
            <script src="https://cdn.tailwindcss.com"></script>
        </head>
        <body>
            <div class="bg-gray-50 p-6">
                    <div class="mb-6 text-3xl flex justify-center overflow-hidden">
                        <h1>Terraform In Action</h1>
                    </div>
                    <div class="flex">
                        <div class="w-1/3">Instance ID:</div>
                        <div>${AWS_INSTANCE_ID}</div>
                    </div>
                        <div class="flex">
                        <div class="w-1/3">Host:</div>
                        <div>${HOSTNAME}</div>
                    </div>
                        <div class="flex">
                        <div class="w-1/3">Availability Zone:</div>
                        <div>${AZ}</div>
                    </div>
                </div>
        </body>
    </html>
EOF

sudo cp index.html /var/www/html/index.html