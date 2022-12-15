**free

ctl-opt dftactgrp(*no);

dcl-pi P3285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2576.rpgleinc'
/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P2606.rpgleinc'

dcl-ds theTable extname('T1299') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1299 LIMIT 1;

theCharVar = 'Hello from P3285';
dsply theCharVar;
callp localProc();
P2576();
P879();
P2606();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3285 in the procedure';
end-proc;