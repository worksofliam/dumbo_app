**free

ctl-opt dftactgrp(*no);

dcl-pi P2589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1429.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'

dcl-ds theTable extname('T165') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T165 LIMIT 1;

theCharVar = 'Hello from P2589';
dsply theCharVar;
callp localProc();
P1429();
P1104();
P290();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2589 in the procedure';
end-proc;