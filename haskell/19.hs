import Data.Time.Calendar
import Data.Time.Format
import System.Locale

start = fromGregorian 1901 1 1
end   = fromGregorian 2000 12 1

isSunday :: (FormatTime t) => t -> Int
isSunday t = if (formatTime defaultTimeLocale "%u" t) == "7" then 1 else 0

sundays date
	| date == end = isSunday date
	| otherwise   = (isSunday date) + (sundays $ addGregorianMonthsClip 1 date)

main=print $ sundays start

-- better solution

--import Data.Time.Calendar
--import Data.Time.Calendar.WeekDate

--main=print$length$filter (\(a, b, c)->(c==7)) [toWeekDate$fromGregorian a b 1|a<-[1901..2000], b<-[1..12]]
