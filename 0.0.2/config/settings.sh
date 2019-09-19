cat settings.py | sed -e "s/works.cwogd7tn1le3.ap-northeast-1.rds.amazonaws.com/localhost/" | sed -e "s/dreami/hogehoge/g" | sed -e "s/1111//g" > .settings.py

