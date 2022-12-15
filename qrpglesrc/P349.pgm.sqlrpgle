**free

ctl-opt dftactgrp(*no);

dcl-pi P349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P349';
dsply theCharVar;
callp localProc();
P227();
P144();
P324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P349 in the procedure';
end-proc;