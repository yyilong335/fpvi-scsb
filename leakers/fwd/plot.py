import matplotlib.pyplot as plt

# Read the data from the output file
data = []
with open('output_nofwd.txt', 'r') as file:
    data = [float(line.strip()) for line in file]

# Create a histogram (distribution graph)
plt.hist(data, bins=20, edgecolor='black')
plt.title('Distribution of Data')
plt.xlabel('Values')
plt.ylabel('Frequency')

# Save the graph as a PNG file
plt.savefig('distribution_graph_nofwd.png')

# Display the graph (optional)
# plt.show()
