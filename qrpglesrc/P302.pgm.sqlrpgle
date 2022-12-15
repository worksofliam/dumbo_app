**free

ctl-opt dftactgrp(*no);

dcl-pi P302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T95') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T95 LIMIT 1;

theCharVar = 'Hello from P302';
dsply theCharVar;
callp localProc();
P233();
P275();
P139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P302 in the procedure';
end-proc;