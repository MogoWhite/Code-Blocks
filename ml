# データセットのインポート
from sklearn import datasets
iris = datasets.load_iris()

# 決定木学習モデルのインポート
from sklearn.tree import DecisionTreeClassifier

# インスタンス生成
clf_dt = DecisionTreeClassifier()

# 決定木の学習
clf_dt.fit(iris.data, iris.target)
