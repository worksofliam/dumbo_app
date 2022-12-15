**free

ctl-opt dftactgrp(*no);

dcl-pi P1994;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1524.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P633.rpgleinc'

dcl-ds theTable extname('T1312') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1312 LIMIT 1;

theCharVar = 'Hello from P1994';
dsply theCharVar;
callp localProc();
P1524();
P512();
P633();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1994 in the procedure';
end-proc;