**free

ctl-opt dftactgrp(*no);

dcl-pi P1180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P515.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'

dcl-ds theTable extname('T939') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T939 LIMIT 1;

theCharVar = 'Hello from P1180';
dsply theCharVar;
callp localProc();
P515();
P334();
P232();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1180 in the procedure';
end-proc;