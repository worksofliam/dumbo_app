**free

ctl-opt dftactgrp(*no);

dcl-pi P454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'

dcl-ds theTable extname('T1871') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1871 LIMIT 1;

theCharVar = 'Hello from P454';
dsply theCharVar;
callp localProc();
P8();
P184();
P438();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P454 in the procedure';
end-proc;