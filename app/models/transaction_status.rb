class TransactionStatus < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '販売中' },
    { id: 3, name: 'Sold Out' }
  ]
end
