**free

ctl-opt dftactgrp(*no);

dcl-pi P3162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2308.rpgleinc'
/copy 'qrpgleref/P1164.rpgleinc'
/copy 'qrpgleref/P2679.rpgleinc'

dcl-ds theTable extname('T518') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T518 LIMIT 1;

theCharVar = 'Hello from P3162';
dsply theCharVar;
callp localProc();
P2308();
P1164();
P2679();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3162 in the procedure';
end-proc;