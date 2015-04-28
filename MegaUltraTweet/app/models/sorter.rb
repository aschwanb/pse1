class Sorter

  #Returns array in which records are sorted by popularity (Descending)
  def sort_by_rank(records)
    records = records.uniq.sort_by! {|record| record.get_rank}
    return records.reverse!
  end

  #Returns unique array in which records are sorted by occurrence within array (Descending)
  def sort_by_occurrence(records)
    count = Hash.new(0)
    records.each {|element| count[element] += 1}
    records = records.uniq.sort {|x,y| count[y] <=> count[x]}
    return records
  end


end