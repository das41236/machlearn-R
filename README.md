# machlearn-r
Machine Learning Projects in R


Regression:

	---Linear Regression: 
		-Pros: Works on any size dataset, gives information about relevance of features.
		-Cons: The Linear Regression Assumptions

	---Polynomial Regression:
		-Pros: Works on any size dataset, works well on non linear problems.
		-Cons: Need to choose the right polynomial degree for a good bias/variance tradeoff.

	---SVR:
		-Pros: Easily adaptable, works well on non linear problems, not biased by outliers.
		-Cons: Must apply feature scaling, not well known, difficult to understand.

	---Decision Tree Regression: 

		-Pros: Interpretability, no need for feature scaling, works on linear/non-linear problems.
		-Cons: Poor results on too small datasets, overfitting can easily occur.

	---Random Forest Regression:

		-Pros: Powerful and Accurate, good performance on many problems including non-linear.
		-Cons: No interpretability, overfitting can easily occur, need to choose the number of trees.


CLassification:

	---Logistic Regression:
		-Pros: Probabilistic approach, gives information about statistical significance of features.
		-Cons: Logistic Regression Assumptions.

	---K-Nearest Neighbors:
		-Pros: Simple to understand, fast and efficient.
		-Cons: Need to choose the number of neighbors k.

	---Kernel SVM:
		-Pros: High performance on nonlinear problems, not biased by outliers, not sensitive to overfitting.
		-Cons: Not the best choice for large number of features, more complex.

	---Naive Bayes:
		-Pros: Efficient, not biased by outliersm works on nonlinear problems, probabilistic approach.
		-Cons: Based on the assumption that features have same statistical relevance.

	---Random Forest:
		-Pros: Powerful and accurate, good performance on many problems including non-linear
		-Cons: No interpretability, overfitting can easily occur, need to choose the number of trees.


Clustering:
	
	---K-Means:
		-Pros: Simple to understand, easily adaptable, works well on small or large datasets, fast, efficient and performant.
		-Cons: Need to choose the number of clusters

	---Hierarchical Clustering:
		-Pros: The optimal number of clusters can be obtained by the model itself, practical visualisation with the dendrogram
		-Cons: Not appropriate for large datasets