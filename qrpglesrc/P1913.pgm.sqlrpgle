**free

ctl-opt dftactgrp(*no);

dcl-pi P1913;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1468.rpgleinc'
/copy 'qrpgleref/P1709.rpgleinc'
/copy 'qrpgleref/P1656.rpgleinc'

dcl-ds theTable extname('T1433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1433 LIMIT 1;

theCharVar = 'Hello from P1913';
dsply theCharVar;
callp localProc();
P1468();
P1709();
P1656();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1913 in the procedure';
end-proc;