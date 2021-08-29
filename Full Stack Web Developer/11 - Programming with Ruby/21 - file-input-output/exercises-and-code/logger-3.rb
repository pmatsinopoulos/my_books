# File: logger-3.rb
#
require 'logger'

logger = Logger.new('logging-levels-set-to-info.log')
logger.level = Logger::INFO

logger.unknown('logging with unknown tag')
logger.fatal('logging with fatal tag')
logger.error('logging with error tag')
logger.warn('logging with warn tag')
logger.info('logging with info tag')
logger.debug('logging with debug tag')
