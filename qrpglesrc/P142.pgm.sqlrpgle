**free

ctl-opt dftactgrp(*no);

dcl-pi P142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds theTable extname('T557') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T557 LIMIT 1;

theCharVar = 'Hello from P142';
dsply theCharVar;
callp localProc();
P78();
P5();
P83();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P142 in the procedure';
end-proc;