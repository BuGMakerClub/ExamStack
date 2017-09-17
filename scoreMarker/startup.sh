#!/bin/bash
#Created by Ocelot
#Desc:  Daemon Service for ExamStack Score marker
NAME="scoremarker"
DESC="Daemon Service for ExamStack Scoremarker"
JAVA_HOME="/usr/java/jdk1.8.0_144"
JSVC="/opt/scoremarker/jsvc"
PID_FILE="pid"
PID_PATH="/var/run/scoremarker"
PID=$PID_PATH/$PID_FILE
LOG_FILE="/opt/scoremarker/logs/start-up.log"
SCOREMARKER_PATH="/opt/scoremarker"
SCOREMARKER_JAR="/opt/scoremarker/ScoreMarker-2.0.0.jar"
CLASS_PATH="$SCOREMARKER_JAR:$(echo $SCOREMARKER_PATH/lib/*.jar | tr ' ' ':')"
CLASS="com.examstack.scoremarker.ScoreMarkerMain"
OPTION=$1
execute_jsvc(){
	$JSVC -cp $CLASS_PATH -home $JAVA_HOME -outfile $LOG_FILE -errfile $LOG_FILE -pidfile $PID $1 $CLASS

}
case "$OPTION" in
	start)
		echo "Starting $DESC.."
		echo "$(date): Starting $DESC.." >> $LOG_FILE
		execute_jsvc
		echo "The $DESC has started"
	;;
	stop)
		echo "Stoping $DESC.."
		echo "$(date): Stoping $DESC.." >> $LOG_FILE
		execute_jsvc "-stop"
		echo "The $DESC has stoped"
	;;
	restart)
		if [ -f "$PID" ]; then
			echo "Restarting $DESC.."
			echo "$(date): Restarting $DESC.." >> $LOG_FILE

			execute_jsvc "-stop"
			execute_jsvc
			echo "The $DESC has restarted"
			echo "The $DESC is not restarted" >> $LOG_FILE
		else
			echo "The $DESC is not running, no action taken"
			exit 1
		fi
	;;
	status)
		if [ -f "$PID" ]; then
			echo "The $DESC is running"
		else
			echo "The $DESC is not running"
		fi
	;;
	*)
		echo "Usage: /etc/init.d/$NAME {start|stop|restart|status}" >&2
		exit 3
	;;
esac