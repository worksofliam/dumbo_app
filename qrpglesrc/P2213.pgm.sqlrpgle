**free

ctl-opt dftactgrp(*no);

dcl-pi P2213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P1654.rpgleinc'
/copy 'qrpgleref/P1356.rpgleinc'

dcl-ds theTable extname('T189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T189 LIMIT 1;

theCharVar = 'Hello from P2213';
dsply theCharVar;
callp localProc();
P980();
P1654();
P1356();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2213 in the procedure';
end-proc;