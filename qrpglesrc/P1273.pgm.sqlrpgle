**free

ctl-opt dftactgrp(*no);

dcl-pi P1273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P799.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'
/copy 'qrpgleref/P859.rpgleinc'

dcl-ds theTable extname('T1871') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1871 LIMIT 1;

theCharVar = 'Hello from P1273';
dsply theCharVar;
callp localProc();
P799();
P676();
P859();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1273 in the procedure';
end-proc;