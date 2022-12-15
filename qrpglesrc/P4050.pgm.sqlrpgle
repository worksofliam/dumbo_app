**free

ctl-opt dftactgrp(*no);

dcl-pi P4050;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3870.rpgleinc'
/copy 'qrpgleref/P3771.rpgleinc'
/copy 'qrpgleref/P2522.rpgleinc'

dcl-ds theTable extname('T1845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1845 LIMIT 1;

theCharVar = 'Hello from P4050';
dsply theCharVar;
callp localProc();
P3870();
P3771();
P2522();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4050 in the procedure';
end-proc;