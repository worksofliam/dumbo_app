**free

ctl-opt dftactgrp(*no);

dcl-pi P4337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P2612.rpgleinc'
/copy 'qrpgleref/P4035.rpgleinc'

dcl-ds theTable extname('T1701') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1701 LIMIT 1;

theCharVar = 'Hello from P4337';
dsply theCharVar;
callp localProc();
P628();
P2612();
P4035();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4337 in the procedure';
end-proc;