**free

ctl-opt dftactgrp(*no);

dcl-pi P593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'

dcl-ds theTable extname('T680') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T680 LIMIT 1;

theCharVar = 'Hello from P593';
dsply theCharVar;
callp localProc();
P288();
P196();
P199();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P593 in the procedure';
end-proc;