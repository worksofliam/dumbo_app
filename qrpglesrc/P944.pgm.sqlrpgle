**free

ctl-opt dftactgrp(*no);

dcl-pi P944;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'

dcl-ds theTable extname('T1842') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1842 LIMIT 1;

theCharVar = 'Hello from P944';
dsply theCharVar;
callp localProc();
P295();
P5();
P816();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P944 in the procedure';
end-proc;