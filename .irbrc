require 'irb/completion'
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 1000    # Sauvegarde .irb_history
IRB.conf[:PROMPT][:WES] = {       # name of prompt mode
  :AUTO_INDENT => true,           # enables auto-indent mode
  :PROMPT_I =>  ">> ",            # simple prompt
  :PROMPT_S => nil,               # prompt for continuated strings
  :PROMPT_C => nil,               # prompt for continuated statement
  :RETURN => "    ==>%s\n"        # format to return value
}
IRB.conf[:PROMPT_MODE] = :WES

begin
  require 'rubygems'
  require 'pry'
rescue LoadError
end

if defined?(Pry)
  Pry.start
  exit
end
