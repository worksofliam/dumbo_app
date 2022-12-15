**free

ctl-opt dftactgrp(*no);

dcl-pi P799;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P799';
dsply theCharVar;
callp localProc();
P23();
P387();
P83();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P799 in the procedure';
end-proc;