**free

ctl-opt dftactgrp(*no);

dcl-pi P2966;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1792.rpgleinc'
/copy 'qrpgleref/P2463.rpgleinc'
/copy 'qrpgleref/P2593.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P2966';
dsply theCharVar;
callp localProc();
P1792();
P2463();
P2593();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2966 in the procedure';
end-proc;