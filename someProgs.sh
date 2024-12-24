sudo apt install git -y
sudo apt install gcc cmake -y
sudo apt install g++ -y
sudo apt install valgrind -y
sudo apt install clang-format -y
# sudo apt install -y
# sudo apt install -y
# sudo apt install -y
# sudo apt install -y
# sudo apt install -y

#vsc
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

#установка gtest библиотеки
sudo apt install libgtest-dev
sudo apt-get install libsubunit-dev
