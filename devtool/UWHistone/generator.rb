#!/usr/local/bin/ruby-1.9

require 'erb'
require 'fileutils'

# tables "*Sig" and "*OverlapSignal" are pointer tables containing
# single records. These are ommited.

HEADER = "      ## track: UW Histone"

TABLES = %w(
wgEncodeUwHistoneGm12878H3k4me3StdHotspotsRep1
wgEncodeUwHistoneGm12878H3k4me3StdPkRep1
wgEncodeUwHistoneGm12878H3k4me3StdHotspotsRep2
wgEncodeUwHistoneGm12878H3k4me3StdPkRep2
wgEncodeUwHistoneGm12878H3k27me3StdHotspotsRep1
wgEncodeUwHistoneGm12878H3k27me3StdPkRep1
wgEncodeUwHistoneGm12878H3k27me3StdHotspotsRep2 
wgEncodeUwHistoneGm12878H3k27me3StdPkRep2
wgEncodeUwHistoneGm12878H3k36me3StdHotspotsRep1
wgEncodeUwHistoneGm12878H3k36me3StdPkRep1
wgEncodeUwHistoneGm12878H3k36me3StdHotspotsRep2
wgEncodeUwHistoneGm12878H3k36me3StdPkRep2
wgEncodeUwHistoneK562H3k4me3StdHotspotsRep1
wgEncodeUwHistoneK562H3k4me3StdPkRep1
wgEncodeUwHistoneK562H3k4me3StdHotspotsRep2
wgEncodeUwHistoneK562H3k4me3StdPkRep2
wgEncodeUwHistoneK562H3k27me3StdHotspotsRep1
wgEncodeUwHistoneK562H3k27me3StdPkRep1
wgEncodeUwHistoneK562H3k27me3StdHotspotsRep2
wgEncodeUwHistoneK562H3k27me3StdPkRep2
wgEncodeUwHistoneK562H3k36me3StdHotspotsRep1
wgEncodeUwHistoneK562H3k36me3StdPkRep1
wgEncodeUwHistoneK562H3k36me3StdHotspotsRep2
wgEncodeUwHistoneK562H3k36me3StdPkRep2
wgEncodeUwHistoneHelas3H3k4me3StdHotspotsRep1
wgEncodeUwHistoneHelas3H3k4me3StdPkRep1
wgEncodeUwHistoneHelas3H3k4me3StdHotspotsRep2
wgEncodeUwHistoneHelas3H3k4me3StdPkRep2
wgEncodeUwHistoneHelas3H3k27me3StdHotspotsRep1
wgEncodeUwHistoneHelas3H3k27me3StdPkRep1
wgEncodeUwHistoneHelas3H3k27me3StdHotspotsRep2
wgEncodeUwHistoneHelas3H3k27me3StdPkRep2
wgEncodeUwHistoneHelas3H3k36me3StdHotspotsRep1
wgEncodeUwHistoneHelas3H3k36me3StdPkRep1
wgEncodeUwHistoneHelas3H3k36me3StdHotspotsRep2
wgEncodeUwHistoneHelas3H3k36me3StdPkRep2
wgEncodeUwHistoneHepg2H3k4me3StdHotspotsRep1
wgEncodeUwHistoneHepg2H3k4me3StdPkRep1
wgEncodeUwHistoneHepg2H3k4me3StdHotspotsRep2
wgEncodeUwHistoneHepg2H3k4me3StdPkRep2
wgEncodeUwHistoneHepg2H3k27me3StdHotspotsRep1
wgEncodeUwHistoneHepg2H3k27me3StdPkRep1
wgEncodeUwHistoneHepg2H3k27me3StdHotspotsRep2
wgEncodeUwHistoneHepg2H3k27me3StdPkRep2
wgEncodeUwHistoneHepg2H3k36me3StdHotspotsRep1
wgEncodeUwHistoneHepg2H3k36me3StdPkRep1
wgEncodeUwHistoneHepg2H3k36me3StdHotspotsRep2
wgEncodeUwHistoneHepg2H3k36me3StdPkRep2
wgEncodeUwHistoneHuvecH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHuvecH3k4me3StdPkRep1
wgEncodeUwHistoneHuvecH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHuvecH3k4me3StdPkRep2
wgEncodeUwHistoneHuvecH3k27me3StdHotspotsRep1
wgEncodeUwHistoneHuvecH3k27me3StdPkRep1
wgEncodeUwHistoneHuvecH3k27me3StdHotspotsRep2
wgEncodeUwHistoneHuvecH3k27me3StdPkRep2
wgEncodeUwHistoneHuvecH3k36me3StdHotspotsRep1
wgEncodeUwHistoneHuvecH3k36me3StdPkRep1
wgEncodeUwHistoneHuvecH3k36me3StdHotspotsRep2
wgEncodeUwHistoneHuvecH3k36me3StdPkRep2 
wgEncodeUwHistoneAg04449H3k4me3StdHotspotsRep1
wgEncodeUwHistoneAg04449H3k4me3StdPkRep1
wgEncodeUwHistoneAg04449H3k4me3StdHotspotsRep2
wgEncodeUwHistoneAg04449H3k4me3StdPkRep2
wgEncodeUwHistoneAg04450H3k4me3StdHotspotsRep1
wgEncodeUwHistoneAg04450H3k4me3StdPkRep1
wgEncodeUwHistoneAg04450H3k4me3StdHotspotsRep2
wgEncodeUwHistoneAg04450H3k4me3StdPkRep2
wgEncodeUwHistoneAg09309H3k4me3StdHotspotsRep1
wgEncodeUwHistoneAg09309H3k4me3StdPkRep1
wgEncodeUwHistoneAg09309H3k4me3StdHotspotsRep2
wgEncodeUwHistoneAg09309H3k4me3StdPkRep2
wgEncodeUwHistoneAg09319H3k4me3StdHotspotsRep1
wgEncodeUwHistoneAg09319H3k4me3StdPkRep1
wgEncodeUwHistoneAg09319H3k4me3StdPkRep2
wgEncodeUwHistoneAg10803H3k4me3StdHotspotsRep1
wgEncodeUwHistoneAg10803H3k4me3StdPkRep1
wgEncodeUwHistoneAg10803H3k4me3StdHotspotsRep2
wgEncodeUwHistoneAg10803H3k4me3StdPkRep2 
wgEncodeUwHistoneAoafH3k4me3StdHotspotsRep1
wgEncodeUwHistoneAoafH3k4me3StdPkRep1
wgEncodeUwHistoneAoafH3k4me3StdHotspotsRep2
wgEncodeUwHistoneAoafH3k4me3StdPkRep2
wgEncodeUwHistoneBjH3k4me3StdHotspotsRep1
wgEncodeUwHistoneBjH3k4me3StdPkRep1
wgEncodeUwHistoneBjH3k4me3StdHotspotsRep2
wgEncodeUwHistoneBjH3k4me3StdPkRep2
wgEncodeUwHistoneBjH3k27me3StdHotspotsRep1
wgEncodeUwHistoneBjH3k27me3StdPkRep1
wgEncodeUwHistoneBjH3k27me3StdHotspotsRep2
wgEncodeUwHistoneBjH3k27me3StdPkRep2
wgEncodeUwHistoneBjH3k36me3StdHotspotsRep1
wgEncodeUwHistoneBjH3k36me3StdPkRep1
wgEncodeUwHistoneBjH3k36me3StdHotspotsRep2
wgEncodeUwHistoneBjH3k36me3StdPkRep2
wgEncodeUwHistoneCaco2H3k4me3StdHotspotsRep1
wgEncodeUwHistoneCaco2H3k4me3StdPkRep1
wgEncodeUwHistoneCaco2H3k4me3StdHotspotsRep2
wgEncodeUwHistoneCaco2H3k4me3StdPkRep2
wgEncodeUwHistoneCaco2H3k27me3StdHotspotsRep1
wgEncodeUwHistoneCaco2H3k27me3StdPkRep1
wgEncodeUwHistoneCaco2H3k27me3StdHotspotsRep2
wgEncodeUwHistoneCaco2H3k27me3StdPkRep2
wgEncodeUwHistoneCaco2H3k36me3StdHotspotsRep1
wgEncodeUwHistoneCaco2H3k36me3StdPkRep1
wgEncodeUwHistoneCaco2H3k36me3StdHotspotsRep2
wgEncodeUwHistoneCaco2H3k36me3StdPkRep2
wgEncodeUwHistoneGm06990H3k4me3StdHotspotsRep1
wgEncodeUwHistoneGm06990H3k4me3StdPkRep1
wgEncodeUwHistoneGm06990H3k4me3StdHotspotsRep2
wgEncodeUwHistoneGm06990H3k4me3StdPkRep2
wgEncodeUwHistoneGm06990H3k27me3StdHotspotsRep1
wgEncodeUwHistoneGm06990H3k27me3StdPkRep1
wgEncodeUwHistoneGm06990H3k27me3StdHotspotsRep2
wgEncodeUwHistoneGm06990H3k27me3StdPkRep2
wgEncodeUwHistoneGm06990H3k36me3StdHotspotsRep1
wgEncodeUwHistoneGm06990H3k36me3StdPkRep1
wgEncodeUwHistoneGm06990H3k36me3StdHotspotsRep2
wgEncodeUwHistoneGm06990H3k36me3StdPkRep2
wgEncodeUwHistoneH7esH3k4me3StdHotspotsRep1
wgEncodeUwHistoneH7esH3k4me3StdPkRep1
wgEncodeUwHistoneH7esH3k4me3StdHotspotsRep2
wgEncodeUwHistoneH7esH3k4me3StdPkRep2
wgEncodeUwHistoneH7esH3k27me3StdHotspotsRep1
wgEncodeUwHistoneH7esH3k27me3StdPkRep1
wgEncodeUwHistoneH7esH3k27me3StdHotspotsRep2
wgEncodeUwHistoneH7esH3k27me3StdPkRep2
wgEncodeUwHistoneH7esH3k36me3StdHotspotsRep1
wgEncodeUwHistoneH7esH3k36me3StdPkRep1
wgEncodeUwHistoneH7esH3k36me3StdHotspotsRep2
wgEncodeUwHistoneH7esH3k36me3StdPkRep2
wgEncodeUwHistoneHaspH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHaspH3k4me3StdPkRep1
wgEncodeUwHistoneHaspH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHaspH3k4me3StdPkRep2
wgEncodeUwHistoneHbmecH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHbmecH3k4me3StdPkRep1
wgEncodeUwHistoneHbmecH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHbmecH3k4me3StdPkRep2
wgEncodeUwHistoneHcfH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHcfH3k4me3StdPkRep1
wgEncodeUwHistoneHcfH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHcfH3k4me3StdPkRep2
wgEncodeUwHistoneHcfaaH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHcfaaH3k4me3StdPkRep1
wgEncodeUwHistoneHcmH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHcmH3k4me3StdPkRep1
wgEncodeUwHistoneHcmH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHcmH3k4me3StdPkRep2
wgEncodeUwHistoneHcpeH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHcpeH3k4me3StdPkRep1
wgEncodeUwHistoneHcpeH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHcpeH3k4me3StdPkRep2
wgEncodeUwHistoneHct116H3k4me3StdHotspotsRep1
wgEncodeUwHistoneHct116H3k4me3StdPkRep1
wgEncodeUwHistoneHct116H3k4me3StdHotspotsRep2
wgEncodeUwHistoneHct116H3k4me3StdPkRep2
wgEncodeUwHistoneHeeH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHeeH3k4me3StdPkRep1
wgEncodeUwHistoneHeeH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHeeH3k4me3StdPkRep2
wgEncodeUwHistoneHek293H3k4me3StdHotspotsRep1
wgEncodeUwHistoneHek293H3k4me3StdPkRep1
wgEncodeUwHistoneHek293H3k4me3StdHotspotsRep2
wgEncodeUwHistoneHek293H3k4me3StdPkRep2
wgEncodeUwHistoneHl60H3k4me3StdHotspotsRep1
wgEncodeUwHistoneHl60H3k4me3StdPkRep1
wgEncodeUwHistoneHl60H3k4me3StdHotspotsRep2
wgEncodeUwHistoneHl60H3k4me3StdPkRep2
wgEncodeUwHistoneHmecH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHmecH3k4me3StdPkRep1
wgEncodeUwHistoneHmecH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHmecH3k4me3StdPkRep2
wgEncodeUwHistoneHmecH3k27me3StdHotspotsRep1
wgEncodeUwHistoneHmecH3k27me3StdPkRep1
wgEncodeUwHistoneHmfH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHmfH3k4me3StdPkRep1
wgEncodeUwHistoneHmfH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHmfH3k4me3StdPkRep2
wgEncodeUwHistoneHpafH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHpafH3k4me3StdPkRep1
wgEncodeUwHistoneHpafH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHpafH3k4me3StdPkRep2
wgEncodeUwHistoneHpfH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHpfH3k4me3StdPkRep1
wgEncodeUwHistoneHpfH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHpfH3k4me3StdPkRep2
wgEncodeUwHistoneHreH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHreH3k4me3StdPkRep1
wgEncodeUwHistoneHreH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHreH3k4me3StdPkRep2
wgEncodeUwHistoneHreH3k27me3StdHotspotsRep1
wgEncodeUwHistoneHreH3k27me3StdPkRep1
wgEncodeUwHistoneHreH3k27me3StdHotspotsRep2
wgEncodeUwHistoneHreH3k27me3StdPkRep2
wgEncodeUwHistoneHreH3k36me3StdHotspotsRep1
wgEncodeUwHistoneHreH3k36me3StdPkRep1
wgEncodeUwHistoneHreH3k36me3StdHotspotsRep2
wgEncodeUwHistoneHreH3k36me3StdPkRep2
wgEncodeUwHistoneHrpeH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHrpeH3k4me3StdPkRep1
wgEncodeUwHistoneHrpeH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHrpeH3k4me3StdPkRep2
wgEncodeUwHistoneHvmfH3k4me3StdHotspotsRep1
wgEncodeUwHistoneHvmfH3k4me3StdPkRep1
wgEncodeUwHistoneHvmfH3k4me3StdHotspotsRep2
wgEncodeUwHistoneHvmfH3k4me3StdPkRep2
wgEncodeUwHistoneJurkatH3k4me3StdHotspotsRep1
wgEncodeUwHistoneJurkatH3k4me3StdPkRep1
wgEncodeUwHistoneJurkatH3k4me3StdHotspotsRep2
wgEncodeUwHistoneJurkatH3k4me3StdPkRep2
wgEncodeUwHistoneMcf7H3k4me3StdHotspotsRep1
wgEncodeUwHistoneMcf7H3k4me3StdPkRep1
wgEncodeUwHistoneNb4H3k4me3StdHotspotsRep1
wgEncodeUwHistoneNb4H3k4me3StdPkRep1
wgEncodeUwHistoneNhdfneoH3k4me3StdHotspotsRep1
wgEncodeUwHistoneNhdfneoH3k4me3StdPkRep1 
wgEncodeUwHistoneNhdfneoH3k4me3StdHotspotsRep2
wgEncodeUwHistoneNhdfneoH3k4me3StdPkRep2
wgEncodeUwHistoneNhekH3k4me3StdHotspotsRep1
wgEncodeUwHistoneNhekH3k4me3StdPkRep1
wgEncodeUwHistoneNhekH3k4me3StdHotspotsRep2
wgEncodeUwHistoneNhekH3k4me3StdPkRep2
wgEncodeUwHistoneNhekH3k27me3StdHotspotsRep1
wgEncodeUwHistoneNhekH3k27me3StdPkRep1
wgEncodeUwHistoneNhekH3k27me3StdHotspotsRep2
wgEncodeUwHistoneNhekH3k27me3StdPkRep2
wgEncodeUwHistoneNhekH3k36me3StdHotspotsRep1
wgEncodeUwHistoneNhekH3k36me3StdPkRep1
wgEncodeUwHistoneNhekH3k36me3StdHotspotsRep2
wgEncodeUwHistoneNhekH3k36me3StdPkRep2
wgEncodeUwHistoneSaecH3k4me3StdHotspotsRep1
wgEncodeUwHistoneSaecH3k4me3StdPkRep1
wgEncodeUwHistoneSaecH3k4me3StdHotspotsRep2
wgEncodeUwHistoneSaecH3k4me3StdPkRep2
wgEncodeUwHistoneSaecH3k27me3StdHotspotsRep1
wgEncodeUwHistoneSaecH3k27me3StdPkRep1
wgEncodeUwHistoneSaecH3k27me3StdHotspotsRep2
wgEncodeUwHistoneSaecH3k27me3StdPkRep2
wgEncodeUwHistoneSaecH3k36me3StdHotspotsRep1
wgEncodeUwHistoneSaecH3k36me3StdPkRep1
wgEncodeUwHistoneSaecH3k36me3StdHotspotsRep2
wgEncodeUwHistoneSaecH3k36me3StdPkRep2
wgEncodeUwHistoneSknshraH3k4me3StdHotspotsRep1
wgEncodeUwHistoneSknshraH3k4me3StdPkRep1
wgEncodeUwHistoneSknshraH3k4me3StdHotspotsRep2
wgEncodeUwHistoneSknshraH3k4me3StdPkRep2
wgEncodeUwHistoneSknshraH3k27me3StdHotspotsRep1
wgEncodeUwHistoneSknshraH3k27me3StdPkRep1
wgEncodeUwHistoneSknshraH3k27me3StdHotspotsRep2
wgEncodeUwHistoneSknshraH3k27me3StdPkRep2
wgEncodeUwHistoneSknshraH3k36me3StdHotspotsRep1
wgEncodeUwHistoneSknshraH3k36me3StdPkRep1
wgEncodeUwHistoneSknshraH3k36me3StdHotspotsRep2
wgEncodeUwHistoneSknshraH3k36me3StdPkRep2
)

temp_spec = "template_spec.txt"
temp_auto = "template_auto.txt"
temp_main = "template_main.txt"

FileUtils.mkdir_p("Specs") unless FileTest.exist?("Specs")
FileUtils.mkdir_p("Scripts") unless FileTest.exist?("Scripts")

TABLES.each do |tab|
  table_name  = tab
  klass_name  = tab[0].upcase << tab[1..-1]
  script_name = tab.downcase

  open("Specs/#{script_name}_spec.rb", "w") do |writer|
    erb = ERB.new File.read(temp_spec)
    writer.puts erb.result binding
  end

  open("Scripts/#{script_name}.rb", "w") do |writer|
    erb = ERB.new File.read(temp_main)
    writer.puts erb.result binding
  end

end

open("autoload_snippet.rb", 'w') do |writer|
  writer.puts HEADER
  TABLES.each do |tab|
    table_name  = tab
    klass_name  = tab[0].upcase << tab[1..-1]
    script_name = tab.downcase
    erb = ERB.new File.read(temp_auto)
    writer.puts erb.result binding
  end
end
