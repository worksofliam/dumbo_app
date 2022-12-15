**free

ctl-opt dftactgrp(*no);

dcl-pi P2086;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1644.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P847.rpgleinc'

dcl-ds theTable extname('T459') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T459 LIMIT 1;

theCharVar = 'Hello from P2086';
dsply theCharVar;
callp localProc();
P1644();
P564();
P847();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2086 in the procedure';
end-proc;