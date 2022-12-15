**free

ctl-opt dftactgrp(*no);

dcl-pi P2715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1026.rpgleinc'
/copy 'qrpgleref/P819.rpgleinc'
/copy 'qrpgleref/P1488.rpgleinc'

dcl-ds theTable extname('T641') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T641 LIMIT 1;

theCharVar = 'Hello from P2715';
dsply theCharVar;
callp localProc();
P1026();
P819();
P1488();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2715 in the procedure';
end-proc;