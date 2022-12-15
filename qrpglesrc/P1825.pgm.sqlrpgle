**free

ctl-opt dftactgrp(*no);

dcl-pi P1825;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P948.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P1164.rpgleinc'

dcl-ds theTable extname('T1120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1120 LIMIT 1;

theCharVar = 'Hello from P1825';
dsply theCharVar;
callp localProc();
P948();
P23();
P1164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1825 in the procedure';
end-proc;