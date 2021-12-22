# Ruby AR Practice Challenge:  Taste_Testers 🍱🍜😋🍲🥗 - 📋🧐📊  


For this assignment, we'll be working with a new Restaurant domain. We'll be
focusing on the most difficult part of helping this small business start; tasting the food 🍽🧐. 

<!-- Lol 🤣 -->

We will be designing the database that will soon interface with a frontend for providing this new small business with feeback on their Dishes! 😰👎 / 😋👍




================================================
================================




We have three models: `User`, `Rating`, and `Dish`.

For our purposes, a `Dish` has many `User`s, a `User` has many `Dish`es,
and a `Rating` belongs to a `User` and to a `Dish`.

`Dish` - `User` is a **many to many relationship** 👀.


**Note**: You should (❗️👀❗️DEFINITELY❗️👀❗️) draw your domain/domain model/database diagram/model associaitions on paper or on a whiteboard or psudocode _BEFORE you
start coding_ 🙃. Remember to identify a single source of truth for your data.




## Topics

- Active Record Migrations
- Active Record Associations
- Class and Instance Methods
- Active Record Querying


## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed
in a suggested order, but you can feel free to tackle the ones you think are
easiest. Be careful: some of the later methods rely on earlier ones.


❗️❗️❗️❗️

**Remember!** This practice challenge does NOT have tests. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and
methods work in the console before submitting.

❗️❗️❗️❗️

Though there are no test files, you have been provided you a tool that you can use to test your code. To use it,
run `rake console` from the command line. This will start a `pry` session with
your classes defined. You can test out the methods that you write there. 

You are also encouraged to use the `seeds.rb` file to create sample data to test your
models and associations.


Some Reminders: 

Writing error-free code is more important than completing all of the
deliverables listed - prioritize writing methods that work over writing more
methods that don't work 😅. 

❗️👀❗️ You should test your code in the console as you write. ❗️👀❗️

Similarly, messy code that works is better than clean code that doesn't. First,
prioritize getting things working. Then, if there is time at the end, refactor
your code to adhere to best practices.

💪🛠✅ #Make_It_Work_THEN_Make_It_Prettyyyy 🌈🙌✨

>> **Before you Call It Quits!** Save and run your code to verify that it works as you
expect. If you have any methods that are not working yet, feel free to leave
reasons describing your progress.




================================================
================================





## What You Already Have

The starter code has 

migrations and models for the initial `User` and `Dish`
models, and 

seed data for some `User`s and `Dish`s. 

The GOAL is for your schema/tables to look like this:

#### users Table

| Column | Type   |
| ------ | ------ |
| name       | String |
| location   | String |

#### dishes Table 

| Column | Type    |
| ------ | ------- |
| name   | String  |
| intended_to_be   | String |
| current_price  | Float |

Hmmmm, inquisitive are you 💻🤔; you might notice that there is a table MISSING 🙃.

<!-- Lol 🤣 -->

Well YOU will need to decipher what that will look like based upon the attributes specified in the deliverables below 😬.

YOU will need to create the migration for the `ratings` table, as well as the `users` table and `dishes` table.

<!-- No pun intented - dishes .... table 😀 .... get it 😅 -->




================================================
================================




## Deliverables

Write the following methods in the classes in the files provided. Feel free to
build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class
methods.

Remember: Active Record gives your classes access to a lot of methods already!

Keep in mind what methods Active Record gives you access to on each of your
classes when you're approaching the deliverables below.


### Migrations

Before working on the rest of the deliverables, you will need to create a
migration for the `ratings` table, as well as the `users` table and `dishes` table.

- A `Rating` belongs to a `Dish`, and a `Rating` also belongs to a `User`. In
  your migration, create any columns your `ratings` table will need to establish
  these relationships.
- The `ratings` table should also have:
  - A `score` column that stores an integer (Lowest being 0, Highest being 10).
  - A `reason` column that stores a string.
  - A `recommended_price` column that stores a float.

After creating and running your migration, create your `Rating` class, and use
the `seeds.rb` file to create `Rating` instances so you can test your code.

**Once you've set up your `ratings` table**, work on building out the following
deliverables.

### Object Association Methods

Use Active Record association macros and Active Record query methods where
APPROPRIATE (i.e. `has_many`, `has_many through`, and `belongs_to`).


#### Rating

- `Rating#user`
  - returns the `User` instance for this Rating
- `Rating#dish`
  - returns the `Dish` instance for this Rating


#### Dish

- `Dish#ratings`
  - returns a collection of all the `Rating`s for the Dish
- `Dish#users`
  - returns a collection of all the `User`s who rated the Dish


#### User

- `User#ratings`
  - returns a collection of all the `Rating`s that the User has given
- `User#dishes`
  - returns a collection of all the `Dishe`s that the User has rated

❗️❗️❗️❗️

Use `rake console` and check that these methods work before proceeding. For
example, you should be able to call `User.first.dishes` and see a list of the
`dishes` for the first `user` in the database based on your seed data; and
`Rating.first.user` should return the `user` for the first `rating` in the database.

❗️❗️❗️❗️



### Aggregate and Association Methods


#### Rating

- `Rating#print_rating`
  - should `puts` to the terminal a string formatted as follows: `Rating for {insert dish name} by {insert user name}: {insert rating score}. Becuase, {insert rating reason}`


#### Dish

- `Dish#leave_rating(user, score, reason, recommended_price)`
  - takes a `User` (an instance of the `User` class), a `score` (integer), a `reason` (string), and a `recommended_price` as arguments, and creates a new `Rating` in the database associated with this `Dish` and the `User`

- `Dish#print_all_ratings`
  - should `puts` to the terminal a string representing each `rating` for this `dish`
  - each `rating` should be formatted as follows: `Rating for {insert dish name} by {insert user name}: {insert rating score}. Becuase, {insert rating reason}`

- `Dish#average_rating`
  - returns a `float` representing the average `score` for all `rating`s for this `dish`
  - remember that the average of something is the sum of all the values, divided by the number of values:
    - the average of 1,1,1  : (1 + 1 + 1)/3
    - the average of 2,2,2  : (2 + 2 + 2)/3
    - the average of 3,3,3  : (3 + 3 + 3)/3
    - the average of 1,2,3,4: (1 + 2 + 3 + 4)/4
  
- `Dish#is_dish_popular`
  - returns `true` if `dish` has an average score above a 5, or `false` if the `dish` has an average score below 5


#### User

- `User#favorite_dish`
  - returns the `dish` instance that has the highest `score` from this `user`

- `User#least_favorite_dish`
  - returns the `dish` instance that has the lowest `score` from this `user`

- `User#remove_ratings(dish)`
  - takes a `Dish` (an instance of the `Dish` class) and removes _all_ of this `user`'s `rating`s for that `dish`
  - you will have to delete any rows from the `ratings` table associated with this `user` and the `dish`




  