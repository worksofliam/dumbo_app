**free

ctl-opt dftactgrp(*no);

dcl-pi P593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds theTable extname('T188') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T188 LIMIT 1;

theCharVar = 'Hello from P593';
dsply theCharVar;
callp localProc();
P205();
P124();
P20();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P593 in the procedure';
end-proc;