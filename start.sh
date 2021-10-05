echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/itspriyo/Music_Player /Music_Player
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/itspriyo/Music_Player -b $BRANCH /Music_Player
fi
cd /Music_Player
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
