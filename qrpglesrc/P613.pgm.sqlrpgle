**free

ctl-opt dftactgrp(*no);

dcl-pi P613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P613';
dsply theCharVar;
callp localProc();
P292();
P214();
P186();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P613 in the procedure';
end-proc;