**free

ctl-opt dftactgrp(*no);

dcl-pi P4612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2092.rpgleinc'
/copy 'qrpgleref/P1890.rpgleinc'
/copy 'qrpgleref/P2477.rpgleinc'

dcl-ds theTable extname('T840') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T840 LIMIT 1;

theCharVar = 'Hello from P4612';
dsply theCharVar;
callp localProc();
P2092();
P1890();
P2477();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4612 in the procedure';
end-proc;