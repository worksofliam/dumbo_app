**free

ctl-opt dftactgrp(*no);

dcl-pi P851;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T1273') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1273 LIMIT 1;

theCharVar = 'Hello from P851';
dsply theCharVar;
callp localProc();
P394();
P502();
P313();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P851 in the procedure';
end-proc;