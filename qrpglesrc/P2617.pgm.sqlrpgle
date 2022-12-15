**free

ctl-opt dftactgrp(*no);

dcl-pi P2617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2380.rpgleinc'
/copy 'qrpgleref/P2165.rpgleinc'
/copy 'qrpgleref/P2333.rpgleinc'

dcl-ds theTable extname('T498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T498 LIMIT 1;

theCharVar = 'Hello from P2617';
dsply theCharVar;
callp localProc();
P2380();
P2165();
P2333();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2617 in the procedure';
end-proc;