**free

ctl-opt dftactgrp(*no);

dcl-pi P4582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4155.rpgleinc'
/copy 'qrpgleref/P1199.rpgleinc'
/copy 'qrpgleref/P2510.rpgleinc'

dcl-ds theTable extname('T334') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T334 LIMIT 1;

theCharVar = 'Hello from P4582';
dsply theCharVar;
callp localProc();
P4155();
P1199();
P2510();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4582 in the procedure';
end-proc;