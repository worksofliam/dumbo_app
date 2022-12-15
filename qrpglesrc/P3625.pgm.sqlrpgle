**free

ctl-opt dftactgrp(*no);

dcl-pi P3625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1593.rpgleinc'
/copy 'qrpgleref/P1956.rpgleinc'
/copy 'qrpgleref/P2218.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P3625';
dsply theCharVar;
callp localProc();
P1593();
P1956();
P2218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3625 in the procedure';
end-proc;