**free

ctl-opt dftactgrp(*no);

dcl-pi P3454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1148.rpgleinc'
/copy 'qrpgleref/P2413.rpgleinc'
/copy 'qrpgleref/P1468.rpgleinc'

dcl-ds T665 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T665 FROM T665 LIMIT 1;

theCharVar = 'Hello from P3454';
dsply theCharVar;
P1148();
P2413();
P1468();
return;