**free

ctl-opt dftactgrp(*no);

dcl-pi P62;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T879') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T879 LIMIT 1;

theCharVar = 'Hello from P62';
dsply theCharVar;
callp localProc();
P2();
P6();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P62 in the procedure';
end-proc;