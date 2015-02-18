require './lib/Cat'

def cat_hat_iterator(options)
  line             = Array.new(options[:cat_count]) { Cat.new }
  max_interval     = options[:cat_count]-1
  current_interval = 1

  until current_interval > max_interval
    idx = 0

    while line[idx]
      cat  = line[idx]
      cat.hatted? ? cat.doff_hat : cat.don_hat
      idx += current_interval
    end

    current_interval += 1
  end

  line.map.with_index {|cat, idx| cat.hatted? ? idx : nil }.compact
end