**free

ctl-opt dftactgrp(*no);

dcl-pi P1665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P1523.rpgleinc'
/copy 'qrpgleref/P938.rpgleinc'

dcl-ds theTable extname('T244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T244 LIMIT 1;

theCharVar = 'Hello from P1665';
dsply theCharVar;
callp localProc();
P889();
P1523();
P938();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1665 in the procedure';
end-proc;