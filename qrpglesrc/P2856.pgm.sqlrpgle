**free

ctl-opt dftactgrp(*no);

dcl-pi P2856;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2841.rpgleinc'
/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P1640.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P2856';
dsply theCharVar;
callp localProc();
P2841();
P653();
P1640();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2856 in the procedure';
end-proc;