**free

ctl-opt dftactgrp(*no);

dcl-pi P437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T409') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T409 LIMIT 1;

theCharVar = 'Hello from P437';
dsply theCharVar;
callp localProc();
P244();
P426();
P236();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P437 in the procedure';
end-proc;