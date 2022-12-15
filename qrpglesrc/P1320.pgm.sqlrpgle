**free

ctl-opt dftactgrp(*no);

dcl-pi P1320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P916.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds T573 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T573 FROM T573 LIMIT 1;

theCharVar = 'Hello from P1320';
dsply theCharVar;
P916();
P579();
P413();
return;