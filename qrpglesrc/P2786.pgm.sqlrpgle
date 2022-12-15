**free

ctl-opt dftactgrp(*no);

dcl-pi P2786;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2206.rpgleinc'
/copy 'qrpgleref/P1450.rpgleinc'
/copy 'qrpgleref/P2140.rpgleinc'

dcl-ds theTable extname('T1570') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1570 LIMIT 1;

theCharVar = 'Hello from P2786';
dsply theCharVar;
callp localProc();
P2206();
P1450();
P2140();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2786 in the procedure';
end-proc;