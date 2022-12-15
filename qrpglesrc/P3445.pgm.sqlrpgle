**free

ctl-opt dftactgrp(*no);

dcl-pi P3445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2758.rpgleinc'
/copy 'qrpgleref/P2922.rpgleinc'
/copy 'qrpgleref/P2377.rpgleinc'

dcl-ds theTable extname('T272') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T272 LIMIT 1;

theCharVar = 'Hello from P3445';
dsply theCharVar;
callp localProc();
P2758();
P2922();
P2377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3445 in the procedure';
end-proc;