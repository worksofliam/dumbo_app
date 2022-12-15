**free

ctl-opt dftactgrp(*no);

dcl-pi P2552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1150.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P2075.rpgleinc'

dcl-ds theTable extname('T897') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T897 LIMIT 1;

theCharVar = 'Hello from P2552';
dsply theCharVar;
callp localProc();
P1150();
P327();
P2075();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2552 in the procedure';
end-proc;