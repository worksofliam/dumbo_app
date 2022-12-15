**free

ctl-opt dftactgrp(*no);

dcl-pi P3831;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'
/copy 'qrpgleref/P2354.rpgleinc'

dcl-ds theTable extname('T1826') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1826 LIMIT 1;

theCharVar = 'Hello from P3831';
dsply theCharVar;
callp localProc();
P175();
P972();
P2354();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3831 in the procedure';
end-proc;