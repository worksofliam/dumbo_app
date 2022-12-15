**free

ctl-opt dftactgrp(*no);

dcl-pi P2770;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1806.rpgleinc'
/copy 'qrpgleref/P905.rpgleinc'
/copy 'qrpgleref/P2383.rpgleinc'

dcl-ds theTable extname('T510') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T510 LIMIT 1;

theCharVar = 'Hello from P2770';
dsply theCharVar;
callp localProc();
P1806();
P905();
P2383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2770 in the procedure';
end-proc;