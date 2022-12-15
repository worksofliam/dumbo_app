**free

ctl-opt dftactgrp(*no);

dcl-pi P1607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P977.rpgleinc'
/copy 'qrpgleref/P1593.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds theTable extname('T648') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T648 LIMIT 1;

theCharVar = 'Hello from P1607';
dsply theCharVar;
callp localProc();
P977();
P1593();
P341();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1607 in the procedure';
end-proc;