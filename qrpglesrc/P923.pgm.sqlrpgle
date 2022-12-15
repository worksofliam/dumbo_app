**free

ctl-opt dftactgrp(*no);

dcl-pi P923;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'

dcl-ds theTable extname('T477') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T477 LIMIT 1;

theCharVar = 'Hello from P923';
dsply theCharVar;
callp localProc();
P121();
P333();
P659();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P923 in the procedure';
end-proc;