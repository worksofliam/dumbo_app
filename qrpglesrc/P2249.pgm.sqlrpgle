**free

ctl-opt dftactgrp(*no);

dcl-pi P2249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P881.rpgleinc'
/copy 'qrpgleref/P965.rpgleinc'
/copy 'qrpgleref/P1481.rpgleinc'

dcl-ds T544 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T544 FROM T544 LIMIT 1;

theCharVar = 'Hello from P2249';
dsply theCharVar;
P881();
P965();
P1481();
return;