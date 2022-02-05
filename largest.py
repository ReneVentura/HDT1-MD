import pandas as pd
from datetime import datetime
import matplotlib.pyplot as plt

peliculas = pd.read_csv("movies.csv", encoding="latin1")

print(peliculas.nlargest(10, 'runtime')['genres'])