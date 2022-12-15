**free

ctl-opt dftactgrp(*no);

dcl-pi P2150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P1937.rpgleinc'
/copy 'qrpgleref/P923.rpgleinc'

dcl-ds theTable extname('T555') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T555 LIMIT 1;

theCharVar = 'Hello from P2150';
dsply theCharVar;
callp localProc();
P816();
P1937();
P923();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2150 in the procedure';
end-proc;