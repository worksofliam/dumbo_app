**free

ctl-opt dftactgrp(*no);

dcl-pi P604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'

dcl-ds theTable extname('T787') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T787 LIMIT 1;

theCharVar = 'Hello from P604';
dsply theCharVar;
callp localProc();
P561();
P387();
P144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P604 in the procedure';
end-proc;