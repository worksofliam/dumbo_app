**free

ctl-opt dftactgrp(*no);

dcl-pi P481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'

dcl-ds theTable extname('T61') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T61 LIMIT 1;

theCharVar = 'Hello from P481';
dsply theCharVar;
callp localProc();
P325();
P222();
P400();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P481 in the procedure';
end-proc;