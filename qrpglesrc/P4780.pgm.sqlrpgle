**free

ctl-opt dftactgrp(*no);

dcl-pi P4780;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2544.rpgleinc'
/copy 'qrpgleref/P2977.rpgleinc'
/copy 'qrpgleref/P1127.rpgleinc'

dcl-ds theTable extname('T550') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T550 LIMIT 1;

theCharVar = 'Hello from P4780';
dsply theCharVar;
callp localProc();
P2544();
P2977();
P1127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4780 in the procedure';
end-proc;