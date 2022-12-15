**free

ctl-opt dftactgrp(*no);

dcl-pi P2098;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P1283.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'

dcl-ds theTable extname('T248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T248 LIMIT 1;

theCharVar = 'Hello from P2098';
dsply theCharVar;
callp localProc();
P242();
P1283();
P624();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2098 in the procedure';
end-proc;