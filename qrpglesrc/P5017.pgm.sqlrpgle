**free

ctl-opt dftactgrp(*no);

dcl-pi P5017;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1192.rpgleinc'
/copy 'qrpgleref/P4478.rpgleinc'
/copy 'qrpgleref/P2073.rpgleinc'

dcl-ds theTable extname('T665') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T665 LIMIT 1;

theCharVar = 'Hello from P5017';
dsply theCharVar;
callp localProc();
P1192();
P4478();
P2073();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5017 in the procedure';
end-proc;