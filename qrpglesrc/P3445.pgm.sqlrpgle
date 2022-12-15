**free

ctl-opt dftactgrp(*no);

dcl-pi P3445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3212.rpgleinc'
/copy 'qrpgleref/P3144.rpgleinc'
/copy 'qrpgleref/P2534.rpgleinc'

dcl-ds theTable extname('T1869') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1869 LIMIT 1;

theCharVar = 'Hello from P3445';
dsply theCharVar;
callp localProc();
P3212();
P3144();
P2534();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3445 in the procedure';
end-proc;