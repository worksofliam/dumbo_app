**free

ctl-opt dftactgrp(*no);

dcl-pi P3127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1333.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'

dcl-ds theTable extname('T1595') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1595 LIMIT 1;

theCharVar = 'Hello from P3127';
dsply theCharVar;
callp localProc();
P1333();
P329();
P816();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3127 in the procedure';
end-proc;