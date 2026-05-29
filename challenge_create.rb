require_relative 'ar.rb'

Product.find_or_create_by(name: 'Broom', description: 'A stick with bristles at the end to clean.', price: '5.40', stock_quantity: 100)
Product.find_or_create_by!(name: 'Roomba', description: 'A robotic puck that cleans for you.', price: '40.50', stock_quantity: 50)
Product.find_or_initialize_by(name: 'Mop', description: 'The brooms wet cousin, this one cleans wet stains.', price: '0.50', stock_quantity: 25)

#Product.find_or_create_by!(name: 'M')
=begin

D, [2026-05-27T21:44:10.070431 #22599] DEBUG -- :   Product Load (2.2ms)  SELECT "products".* FROM "products" WHERE "products"."name" = ? LIMIT ?  [["name", "M"], ["LIMIT", 1]]
D, [2026-05-27T21:44:10.070924 #22599] DEBUG -- :   TRANSACTION (0.1ms)  BEGIN immediate TRANSACTION
D, [2026-05-27T21:44:10.077805 #22599] DEBUG -- :   Product Exists? (0.1ms)  SELECT 1 AS one FROM "products" WHERE "products"."name" = ? LIMIT ?  [["name", "M"], ["LIMIT", 1]]
D, [2026-05-27T21:44:10.088367 #22599] DEBUG -- :   TRANSACTION (0.1ms)  ROLLBACK TRANSACTION
/root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/validations.rb:87:in `raise_validation_error': Validation failed: Name is too short (minimum is 2 characters) (ActiveRecord::RecordInvalid)
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/validations.rb:54:in `save!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/transactions.rb:385:in `block in save!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/transactions.rb:438:in `block (3 levels) in with_transaction_returning_status'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/database_statements.rb:376:in `transaction'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/transactions.rb:434:in `block (2 levels) in with_transaction_returning_status'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/connection_pool.rb:485:in `with_pool_transaction_isolation_level'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/transactions.rb:430:in `block in with_transaction_returning_status'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/connection_pool.rb:457:in `with_connection'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_handling.rb:313:in `with_connection'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/transactions.rb:429:in `with_transaction_returning_status'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/transactions.rb:385:in `save!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/suppressor.rb:56:in `save!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/persistence.rb:55:in `create!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation.rb:1382:in `_create!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation.rb:174:in `block in create!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation.rb:1393:in `_scoping'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation.rb:558:in `scoping'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation.rb:174:in `create!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation.rb:297:in `block (2 levels) in create_or_find_by!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/transaction.rb:648:in `block in within_new_transaction'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activesupport-8.1.3/lib/active_support/concurrency/null_lock.rb:9:in `synchronize'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/transaction.rb:645:in `within_new_transaction'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/database_statements.rb:386:in `within_new_transaction'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/database_statements.rb:378:in `transaction'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/transactions.rb:234:in `block (2 levels) in transaction'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/connection_pool.rb:485:in `with_pool_transaction_isolation_level'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/transactions.rb:233:in `block in transaction'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/connection_pool.rb:457:in `with_connection'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_handling.rb:313:in `with_connection'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/transactions.rb:232:in `transaction'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation/delegation.rb:105:in `transaction'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation.rb:296:in `block in create_or_find_by!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_adapters/abstract/connection_pool.rb:463:in `with_connection'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/connection_handling.rb:313:in `with_connection'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation/delegation.rb:105:in `with_connection'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation.rb:294:in `create_or_find_by!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/relation.rb:239:in `find_or_create_by!'
        from /root/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/activerecord-8.1.3/lib/active_record/querying.rb:24:in `find_or_create_by!'
        from challenge_create.rb:7:in `<main>'
=end