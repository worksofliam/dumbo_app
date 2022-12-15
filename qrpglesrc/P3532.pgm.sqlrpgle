**free

ctl-opt dftactgrp(*no);

dcl-pi P3532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P2100.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'

dcl-ds theTable extname('T206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T206 LIMIT 1;

theCharVar = 'Hello from P3532';
dsply theCharVar;
callp localProc();
P254();
P2100();
P873();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3532 in the procedure';
end-proc;