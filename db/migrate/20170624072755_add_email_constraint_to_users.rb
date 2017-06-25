class AddEmailConstraintToUsers < ActiveRecord::Migration[5.0]
  def up
    execute %{
      ALTER TABLE Users
      ADD CONSTRAINT
      email_must_be_company_email
      CHECK ( email ~* '^[^@]+@example\\.com$' )
    }
  end

  def down
    execute %{
      ALTER TABLE Users
      DROP CONSTRAINT
      email_must_be_company_email
    }
  end
end
