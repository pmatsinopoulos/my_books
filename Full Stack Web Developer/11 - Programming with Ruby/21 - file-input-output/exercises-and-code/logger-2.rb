# File: logger-2.rb
#
require 'logger'

logger = Logger.new('logging-levels.log')
logger.unknown('logging with unknown tag')
logger.fatal('logging with fatal tag')
logger.error('logging with error tag')
logger.warn('logging with warn tag')
logger.info('logging with info tag')
logger.debug('logging with debug tag')
