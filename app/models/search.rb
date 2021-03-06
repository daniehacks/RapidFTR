class Search
  include Validatable

  attr_accessor :query

  validates_presence_of :query
  validates_length_of :query, :maximum => 150

  def initialize(query)
    @query = query.tr(SearchCriteria::SOLR_SPECIAL_CHARS.join, "").strip
  end

end
