**free

ctl-opt dftactgrp(*no);

dcl-pi P2559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1703.rpgleinc'
/copy 'qrpgleref/P2008.rpgleinc'
/copy 'qrpgleref/P1129.rpgleinc'

dcl-ds theTable extname('T29') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T29 LIMIT 1;

theCharVar = 'Hello from P2559';
dsply theCharVar;
callp localProc();
P1703();
P2008();
P1129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2559 in the procedure';
end-proc;