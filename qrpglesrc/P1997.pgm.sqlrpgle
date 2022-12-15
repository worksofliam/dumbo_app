**free

ctl-opt dftactgrp(*no);

dcl-pi P1997;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P819.rpgleinc'
/copy 'qrpgleref/P1498.rpgleinc'
/copy 'qrpgleref/P1359.rpgleinc'

dcl-ds theTable extname('T112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T112 LIMIT 1;

theCharVar = 'Hello from P1997';
dsply theCharVar;
callp localProc();
P819();
P1498();
P1359();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1997 in the procedure';
end-proc;