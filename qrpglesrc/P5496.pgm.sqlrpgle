**free

ctl-opt dftactgrp(*no);

dcl-pi P5496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P2402.rpgleinc'
/copy 'qrpgleref/P3843.rpgleinc'

dcl-ds theTable extname('T1835') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1835 LIMIT 1;

theCharVar = 'Hello from P5496';
dsply theCharVar;
callp localProc();
P162();
P2402();
P3843();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5496 in the procedure';
end-proc;