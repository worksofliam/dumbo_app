**free

ctl-opt dftactgrp(*no);

dcl-pi P183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds theTable extname('T1049') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1049 LIMIT 1;

theCharVar = 'Hello from P183';
dsply theCharVar;
callp localProc();
P83();
P2();
P137();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P183 in the procedure';
end-proc;