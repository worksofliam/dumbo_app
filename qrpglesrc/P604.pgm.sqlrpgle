**free

ctl-opt dftactgrp(*no);

dcl-pi P604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'

dcl-ds theTable extname('T61') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T61 LIMIT 1;

theCharVar = 'Hello from P604';
dsply theCharVar;
callp localProc();
P288();
P529();
P182();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P604 in the procedure';
end-proc;