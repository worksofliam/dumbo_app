**free

ctl-opt dftactgrp(*no);

dcl-pi P2398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1296.rpgleinc'
/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P2388.rpgleinc'

dcl-ds theTable extname('T671') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T671 LIMIT 1;

theCharVar = 'Hello from P2398';
dsply theCharVar;
callp localProc();
P1296();
P647();
P2388();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2398 in the procedure';
end-proc;