**free

ctl-opt dftactgrp(*no);

dcl-pi P3953;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P998.rpgleinc'
/copy 'qrpgleref/P3920.rpgleinc'
/copy 'qrpgleref/P3772.rpgleinc'

dcl-ds theTable extname('T1485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1485 LIMIT 1;

theCharVar = 'Hello from P3953';
dsply theCharVar;
callp localProc();
P998();
P3920();
P3772();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3953 in the procedure';
end-proc;