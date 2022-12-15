**free

ctl-opt dftactgrp(*no);

dcl-pi P2456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1366.rpgleinc'
/copy 'qrpgleref/P2413.rpgleinc'
/copy 'qrpgleref/P1222.rpgleinc'

dcl-ds T972 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T972 FROM T972 LIMIT 1;

theCharVar = 'Hello from P2456';
dsply theCharVar;
P1366();
P2413();
P1222();
return;