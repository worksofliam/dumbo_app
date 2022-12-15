**free

ctl-opt dftactgrp(*no);

dcl-pi P2257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P1637.rpgleinc'

dcl-ds theTable extname('T1819') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1819 LIMIT 1;

theCharVar = 'Hello from P2257';
dsply theCharVar;
callp localProc();
P385();
P13();
P1637();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2257 in the procedure';
end-proc;