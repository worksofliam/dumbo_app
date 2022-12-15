**free

ctl-opt dftactgrp(*no);

dcl-pi P2314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1767.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P2314';
dsply theCharVar;
callp localProc();
P1767();
P385();
P139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2314 in the procedure';
end-proc;