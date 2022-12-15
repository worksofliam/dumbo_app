**free

ctl-opt dftactgrp(*no);

dcl-pi P3499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2492.rpgleinc'
/copy 'qrpgleref/P2550.rpgleinc'
/copy 'qrpgleref/P1193.rpgleinc'

dcl-ds theTable extname('T773') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T773 LIMIT 1;

theCharVar = 'Hello from P3499';
dsply theCharVar;
callp localProc();
P2492();
P2550();
P1193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3499 in the procedure';
end-proc;