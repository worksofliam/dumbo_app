**free

ctl-opt dftactgrp(*no);

dcl-pi P1591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1123.rpgleinc'
/copy 'qrpgleref/P1172.rpgleinc'
/copy 'qrpgleref/P1350.rpgleinc'

dcl-ds theTable extname('T372') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T372 LIMIT 1;

theCharVar = 'Hello from P1591';
dsply theCharVar;
callp localProc();
P1123();
P1172();
P1350();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1591 in the procedure';
end-proc;