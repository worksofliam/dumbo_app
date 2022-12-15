**free

ctl-opt dftactgrp(*no);

dcl-pi P2148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1088.rpgleinc'
/copy 'qrpgleref/P1581.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'

dcl-ds theTable extname('T829') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T829 LIMIT 1;

theCharVar = 'Hello from P2148';
dsply theCharVar;
callp localProc();
P1088();
P1581();
P512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2148 in the procedure';
end-proc;