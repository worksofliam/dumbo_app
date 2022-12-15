**free

ctl-opt dftactgrp(*no);

dcl-pi P2099;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P1578.rpgleinc'
/copy 'qrpgleref/P1595.rpgleinc'

dcl-ds theTable extname('T1517') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1517 LIMIT 1;

theCharVar = 'Hello from P2099';
dsply theCharVar;
callp localProc();
P150();
P1578();
P1595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2099 in the procedure';
end-proc;