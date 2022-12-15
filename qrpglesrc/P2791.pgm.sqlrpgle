**free

ctl-opt dftactgrp(*no);

dcl-pi P2791;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1602.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'
/copy 'qrpgleref/P2504.rpgleinc'

dcl-ds theTable extname('T1400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1400 LIMIT 1;

theCharVar = 'Hello from P2791';
dsply theCharVar;
callp localProc();
P1602();
P594();
P2504();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2791 in the procedure';
end-proc;