**free

ctl-opt dftactgrp(*no);

dcl-pi P1289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P526.rpgleinc'

dcl-ds theTable extname('T371') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T371 LIMIT 1;

theCharVar = 'Hello from P1289';
dsply theCharVar;
callp localProc();
P337();
P41();
P526();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1289 in the procedure';
end-proc;