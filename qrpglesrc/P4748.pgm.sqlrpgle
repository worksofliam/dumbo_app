**free

ctl-opt dftactgrp(*no);

dcl-pi P4748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3628.rpgleinc'
/copy 'qrpgleref/P3894.rpgleinc'
/copy 'qrpgleref/P2875.rpgleinc'

dcl-ds theTable extname('T1170') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1170 LIMIT 1;

theCharVar = 'Hello from P4748';
dsply theCharVar;
callp localProc();
P3628();
P3894();
P2875();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4748 in the procedure';
end-proc;