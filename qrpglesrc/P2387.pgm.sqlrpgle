**free

ctl-opt dftactgrp(*no);

dcl-pi P2387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P1973.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'

dcl-ds theTable extname('T1172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1172 LIMIT 1;

theCharVar = 'Hello from P2387';
dsply theCharVar;
callp localProc();
P186();
P1973();
P611();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2387 in the procedure';
end-proc;