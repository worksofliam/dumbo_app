**free

ctl-opt dftactgrp(*no);

dcl-pi P983;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P846.rpgleinc'
/copy 'qrpgleref/P974.rpgleinc'

dcl-ds theTable extname('T373') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T373 LIMIT 1;

theCharVar = 'Hello from P983';
dsply theCharVar;
callp localProc();
P532();
P846();
P974();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P983 in the procedure';
end-proc;