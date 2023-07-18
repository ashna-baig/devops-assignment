import pandas as pd

def main():
    # create a simple dataframe
    data = {
        'apples': [3, 2, 0, 1], 
        'oranges': [0, 3, 7, 2]
    }

    purchases = pd.DataFrame(data)

    print("Dataframe:\n", purchases)

    # calculate the total for each fruit
    total_apples = purchases['apples'].sum()
    total_oranges = purchases['oranges'].sum()

    print(f"\nTotal apples: {total_apples}")
    print(f"Total oranges: {total_oranges}")

if __name__ == "__main__":
    main()

