**free

ctl-opt dftactgrp(*no);

dcl-pi P2733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1247.rpgleinc'
/copy 'qrpgleref/P2037.rpgleinc'
/copy 'qrpgleref/P2463.rpgleinc'

dcl-ds theTable extname('T808') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T808 LIMIT 1;

theCharVar = 'Hello from P2733';
dsply theCharVar;
callp localProc();
P1247();
P2037();
P2463();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2733 in the procedure';
end-proc;