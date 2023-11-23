echo Hello World!

# Color syntax: echo -e "\e[COLm MESSAGE \e[0m"
# echo -e , -e is to allow colors
# Double quotes are mandatory, Single quotes can be used but not preferred.
# \e[COLm -> COL is a color code we need provide
  # RED       - 31
  # GREEN     - 32
  # YELLOW    - 33
  # BLUE      - 34
  # MAGENTA   - 35
  # CYAN      - 36
# \e[0m -> THis is to disable the enabled color

echo -e "\e[31m RED"
echo -e "\e[32m GREEN \e[0m"
echo -e "\e[33m YELLOW \e[0m"
echo -e "\e[34m BLUE \e[0m"
echo -e "\e[35m MAGENTA \e[0m"
echo -e "\e[36m CYAN \e[0m"

echo -e "\e[31m Install Nginx \e[0m"
dnf install nginx -y

echo -e "\e[32m Copy Expense config file \e[0m"
cp expense.conf /etc/nginx/default.d/expense.conf

echo -e "\e[33m Clean old Nginx content \e[0m"
rm -rf /usr/share/nginx/html/*

echo -e "\e[34m Download Frontend Application code \e[0m"
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip

echo -e "\e[35m Extract downloaded application content \e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

echo -e "\e[36m Restart Nginx service \e[0m"
systemctl enable nginx
systemctl restart nginx