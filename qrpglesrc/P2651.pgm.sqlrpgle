**free

ctl-opt dftactgrp(*no);

dcl-pi P2651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P1308.rpgleinc'
/copy 'qrpgleref/P2379.rpgleinc'

dcl-ds theTable extname('T835') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T835 LIMIT 1;

theCharVar = 'Hello from P2651';
dsply theCharVar;
callp localProc();
P8();
P1308();
P2379();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2651 in the procedure';
end-proc;