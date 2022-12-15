**free

ctl-opt dftactgrp(*no);

dcl-pi P610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T349 LIMIT 1;

theCharVar = 'Hello from P610';
dsply theCharVar;
callp localProc();
P340();
P136();
P90();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P610 in the procedure';
end-proc;