**free

ctl-opt dftactgrp(*no);

dcl-pi P4124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2770.rpgleinc'
/copy 'qrpgleref/P3406.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'

dcl-ds theTable extname('T744') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T744 LIMIT 1;

theCharVar = 'Hello from P4124';
dsply theCharVar;
callp localProc();
P2770();
P3406();
P818();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4124 in the procedure';
end-proc;