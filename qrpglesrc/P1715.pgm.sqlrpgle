**free

ctl-opt dftactgrp(*no);

dcl-pi P1715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'

dcl-ds theTable extname('T460') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T460 LIMIT 1;

theCharVar = 'Hello from P1715';
dsply theCharVar;
callp localProc();
P150();
P89();
P36();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1715 in the procedure';
end-proc;