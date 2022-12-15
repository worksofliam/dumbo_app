**free

ctl-opt dftactgrp(*no);

dcl-pi P2273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1802.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'

dcl-ds theTable extname('T555') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T555 LIMIT 1;

theCharVar = 'Hello from P2273';
dsply theCharVar;
callp localProc();
P1802();
P473();
P1120();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2273 in the procedure';
end-proc;