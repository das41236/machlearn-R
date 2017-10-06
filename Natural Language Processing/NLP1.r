# Natural Language Processing

#Importing the dataset
dataset_original = read.delim('Restaurant_Reviews.tsv', quote = '', stringsAsFactors = FALSE)

# Cleaning the texts
#install.packages('tm')
#install.packages('SnowballC')
library(tm)
library(SnowballC)
corpus = VCorpus(VectorSource(dataset_original$Review))           
corpus = tm_map(corpus, content_transformer(tolower))              # lowercases
corpus = tm_map(corpus, removeNumbers)                            # as.character(corpus[[841]]) command
corpus = tm_map(corpus, removePunctuation)
corpus = tm_map(corpus, removeWords, stopwords())
corpus = tm_map(corpus, stemDocument)                               #important
corpus = tm_map(corpus, stripWhitespace)

# Creating the Bag of Words model
dtm = DocumentTermMatrix(corpus)                                # dtm command
dtm = removeSparseTerms(dtm, 0.999)                             
dataset = as.data.frame(as.matrix(dtm))                       # turn into dataframe to fit classifier
dataset$Liked = dataset_original$Liked




#choose classification model (Naive Bayes, Dtree, Rforest, CART, ...) starting from encoding to cm
#



# Encoding the target feature as factor
dataset$Liked = factor(dataset$Liked, levels = c(0, 1))

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Liked, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Fitting Random Forest Classification to the Training set
# install.packages('randomForest')
library(randomForest)
set.seed(123)
classifier = randomForest(x = training_set[-692],                    # removing dependent variable
                          y = training_set$Liked,
                          ntree = 10)

# Predicting the Test set results
y_pred = predict(classifier, newdata = test_set[-692])              # ^

# Making the Confusion Matrix
cm = table(test_set[, 692], y_pred)                                 #



















