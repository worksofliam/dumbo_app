**free

ctl-opt dftactgrp(*no);

dcl-pi P4288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2799.rpgleinc'
/copy 'qrpgleref/P1157.rpgleinc'
/copy 'qrpgleref/P3550.rpgleinc'

dcl-ds theTable extname('T1805') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1805 LIMIT 1;

theCharVar = 'Hello from P4288';
dsply theCharVar;
callp localProc();
P2799();
P1157();
P3550();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4288 in the procedure';
end-proc;