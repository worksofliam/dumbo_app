**free

ctl-opt dftactgrp(*no);

dcl-pi P3652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2099.rpgleinc'
/copy 'qrpgleref/P1771.rpgleinc'
/copy 'qrpgleref/P1989.rpgleinc'

dcl-ds theTable extname('T5') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T5 LIMIT 1;

theCharVar = 'Hello from P3652';
dsply theCharVar;
callp localProc();
P2099();
P1771();
P1989();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3652 in the procedure';
end-proc;