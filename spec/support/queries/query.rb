require_relative '../types/invoice_type'
class Query < GraphQL::Schema::Object
  field :invoice, InvoiceType, null: true do
    argument :id, Integer, required: false
    description 'Find invoice'
  end

  def invoice(id:)
    OpenStruct.new(
      id: id,
      fee_in_cents: 20_000
    )
  end
end