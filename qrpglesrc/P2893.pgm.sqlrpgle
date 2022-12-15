**free

ctl-opt dftactgrp(*no);

dcl-pi P2893;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1828.rpgleinc'
/copy 'qrpgleref/P1387.rpgleinc'
/copy 'qrpgleref/P1952.rpgleinc'

dcl-ds theTable extname('T768') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T768 LIMIT 1;

theCharVar = 'Hello from P2893';
dsply theCharVar;
callp localProc();
P1828();
P1387();
P1952();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2893 in the procedure';
end-proc;