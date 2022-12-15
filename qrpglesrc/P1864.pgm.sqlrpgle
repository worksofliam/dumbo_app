**free

ctl-opt dftactgrp(*no);

dcl-pi P1864;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds theTable extname('T666') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T666 LIMIT 1;

theCharVar = 'Hello from P1864';
dsply theCharVar;
callp localProc();
P529();
P283();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1864 in the procedure';
end-proc;