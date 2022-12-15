**free

ctl-opt dftactgrp(*no);

dcl-pi P3648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3575.rpgleinc'
/copy 'qrpgleref/P2407.rpgleinc'
/copy 'qrpgleref/P3433.rpgleinc'

dcl-ds theTable extname('T1044') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1044 LIMIT 1;

theCharVar = 'Hello from P3648';
dsply theCharVar;
callp localProc();
P3575();
P2407();
P3433();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3648 in the procedure';
end-proc;