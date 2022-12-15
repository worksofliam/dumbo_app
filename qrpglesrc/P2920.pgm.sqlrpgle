**free

ctl-opt dftactgrp(*no);

dcl-pi P2920;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P898.rpgleinc'
/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'

dcl-ds theTable extname('T1150') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1150 LIMIT 1;

theCharVar = 'Hello from P2920';
dsply theCharVar;
callp localProc();
P898();
P1115();
P780();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2920 in the procedure';
end-proc;