**free

ctl-opt dftactgrp(*no);

dcl-pi P2683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P947.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'

dcl-ds theTable extname('T755') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T755 LIMIT 1;

theCharVar = 'Hello from P2683';
dsply theCharVar;
callp localProc();
P947();
P1155();
P141();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2683 in the procedure';
end-proc;