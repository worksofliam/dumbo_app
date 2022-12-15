**free

ctl-opt dftactgrp(*no);

dcl-pi P2361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1733.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds theTable extname('T549') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T549 LIMIT 1;

theCharVar = 'Hello from P2361';
dsply theCharVar;
callp localProc();
P1733();
P166();
P354();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2361 in the procedure';
end-proc;