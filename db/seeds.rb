# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Actions
Action.create(name: 'MOVE', title: 'Move')
Action.create(name: 'COPY', title: 'Copy')
Action.create(name: 'RENAME', title: 'Rename')

# Conditions
Condition.create(name: 'IS', title: 'is')
Condition.create(name: 'NOT', title: 'is not')
Condition.create(name: 'CONTAINS', title: 'contains')
Condition.create(name: 'NOT_CONTAINS', title: 'does not contain')
Condition.create(name: 'STARTS', title: 'starts with')
Condition.create(name: 'NOT_STARTS', title: 'does not start with')
Condition.create(name: 'ENDS', title: 'ends with')
Condition.create(name: 'NOT_ENDS', title: 'does not end with')
#Condition.create(name: 'MATCHES', title: 'matches')
#Condition.create(name: 'NOT_MATCH', title: 'does not match')
#Condition.create(name: 'CHANGE', title: 'did change')
#Condition.create(name: 'NOT_CHANGE', title: 'did not change')
Condition.create(name: 'BLANK', title: 'is blank')
Condition.create(name: 'NOT_BLANK', title: 'is not blank')

# Properties
Property.create(name: 'NAME', title: 'Name')
Property.create(name: 'FULL_NAME', title: 'Full Name')
Property.create(name: 'EXTENSION', title: 'Extension')
Property.create(name: 'SIZE', title: 'Size')
Property.create(name: 'ADDED', title: 'Date Added')
Property.create(name: 'CREATED', title: 'Date Last Created')
Property.create(name: 'MODIFIED', title: 'Date Last Modified')
Property.create(name: 'OPENED', title: 'Date Last Opened')
Property.create(name: 'ANY', title: 'Any File')