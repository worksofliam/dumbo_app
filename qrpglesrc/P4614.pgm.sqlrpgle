**free

ctl-opt dftactgrp(*no);

dcl-pi P4614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3989.rpgleinc'
/copy 'qrpgleref/P1298.rpgleinc'
/copy 'qrpgleref/P3407.rpgleinc'

dcl-ds theTable extname('T1757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1757 LIMIT 1;

theCharVar = 'Hello from P4614';
dsply theCharVar;
callp localProc();
P3989();
P1298();
P3407();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4614 in the procedure';
end-proc;