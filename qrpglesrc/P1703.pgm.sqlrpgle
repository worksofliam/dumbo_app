**free

ctl-opt dftactgrp(*no);

dcl-pi P1703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1321.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'

dcl-ds theTable extname('T1859') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1859 LIMIT 1;

theCharVar = 'Hello from P1703';
dsply theCharVar;
callp localProc();
P1321();
P75();
P120();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1703 in the procedure';
end-proc;