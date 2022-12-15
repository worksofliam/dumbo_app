**free

ctl-opt dftactgrp(*no);

dcl-pi P251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds theTable extname('T1703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1703 LIMIT 1;

theCharVar = 'Hello from P251';
dsply theCharVar;
callp localProc();
P175();
P24();
P135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P251 in the procedure';
end-proc;