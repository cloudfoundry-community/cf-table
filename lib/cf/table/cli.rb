require 'json'
require 'terminal-table'
require 'pp'

module CF::Table
  class CLI
    def self.run
      if table.send(:columns_width) > term_cols
        puts "Table to wide, please select some columns:"
        puts keys_table
      else
        puts table
      end
    end

    def self.table
      @table ||= Terminal::Table.new headings: columns, rows: rows
    end

    def self.keys_table
      rows = (entity_keys + Array.new(5 - (entity_keys.size % 5))).each_slice(5)
      Terminal::Table.new rows: rows
    end

    def self.rows
      entities.map do |entry|
        columns.map { |column| entry[column] }
      end
    end

    def self.columns
      @columns ||= ARGV.empty? ? default_columns : ARGV
    end

    def self.default_columns
      entity_keys.select { |k| !k.match(/url$/) }
    end

    def self.entity_keys
      @entity_keys || entities.first.keys
    end

    def self.entities
      @entities ||= begin
        JSON.parse($stdin.read)['resources'].map { |entity| entity['entity'] }
      end
    end

    def self.term_cols
      `tput cols`.strip.to_i
    end
  end
end
