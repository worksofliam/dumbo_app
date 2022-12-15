**free

ctl-opt dftactgrp(*no);

dcl-pi P2695;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P645.rpgleinc'
/copy 'qrpgleref/P1267.rpgleinc'
/copy 'qrpgleref/P2532.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P2695';
dsply theCharVar;
callp localProc();
P645();
P1267();
P2532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2695 in the procedure';
end-proc;