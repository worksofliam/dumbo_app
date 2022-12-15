**free

ctl-opt dftactgrp(*no);

dcl-pi P3399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P1889.rpgleinc'
/copy 'qrpgleref/P1735.rpgleinc'

dcl-ds theTable extname('T873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T873 LIMIT 1;

theCharVar = 'Hello from P3399';
dsply theCharVar;
callp localProc();
P718();
P1889();
P1735();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3399 in the procedure';
end-proc;