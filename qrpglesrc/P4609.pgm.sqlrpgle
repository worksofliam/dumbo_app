**free

ctl-opt dftactgrp(*no);

dcl-pi P4609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2258.rpgleinc'
/copy 'qrpgleref/P1382.rpgleinc'
/copy 'qrpgleref/P1013.rpgleinc'

dcl-ds theTable extname('T1328') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1328 LIMIT 1;

theCharVar = 'Hello from P4609';
dsply theCharVar;
callp localProc();
P2258();
P1382();
P1013();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4609 in the procedure';
end-proc;