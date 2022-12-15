**free

ctl-opt dftactgrp(*no);

dcl-pi P3167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P2189.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'

dcl-ds theTable extname('T1758') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1758 LIMIT 1;

theCharVar = 'Hello from P3167';
dsply theCharVar;
callp localProc();
P130();
P2189();
P422();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3167 in the procedure';
end-proc;