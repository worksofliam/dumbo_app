**free

ctl-opt dftactgrp(*no);

dcl-pi P4360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P2873.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'

dcl-ds theTable extname('T682') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T682 LIMIT 1;

theCharVar = 'Hello from P4360';
dsply theCharVar;
callp localProc();
P1365();
P2873();
P614();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4360 in the procedure';
end-proc;