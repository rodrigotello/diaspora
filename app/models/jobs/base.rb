#   Copyright (c) 2010-2011, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

module Jobs
  class Base
    Dir["#{Rails.root}/app/models/jobs/mail/*.rb"].each {|file| require file }
    extend ResqueJobLogging
  end
end

Job = Jobs
