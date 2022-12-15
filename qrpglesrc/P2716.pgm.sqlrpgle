**free

ctl-opt dftactgrp(*no);

dcl-pi P2716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1955.rpgleinc'
/copy 'qrpgleref/P2602.rpgleinc'
/copy 'qrpgleref/P1295.rpgleinc'

dcl-ds theTable extname('T399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T399 LIMIT 1;

theCharVar = 'Hello from P2716';
dsply theCharVar;
callp localProc();
P1955();
P2602();
P1295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2716 in the procedure';
end-proc;