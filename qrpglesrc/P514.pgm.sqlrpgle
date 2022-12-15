**free

ctl-opt dftactgrp(*no);

dcl-pi P514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds T981 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T981 FROM T981 LIMIT 1;

theCharVar = 'Hello from P514';
dsply theCharVar;
P413();
P461();
P122();
return;