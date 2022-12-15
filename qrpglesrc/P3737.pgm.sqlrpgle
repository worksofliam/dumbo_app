**free

ctl-opt dftactgrp(*no);

dcl-pi P3737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1915.rpgleinc'
/copy 'qrpgleref/P1175.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'

dcl-ds theTable extname('T1580') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1580 LIMIT 1;

theCharVar = 'Hello from P3737';
dsply theCharVar;
callp localProc();
P1915();
P1175();
P541();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3737 in the procedure';
end-proc;