**free

ctl-opt dftactgrp(*no);

dcl-pi P3770;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1759.rpgleinc'
/copy 'qrpgleref/P2629.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T1255') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1255 LIMIT 1;

theCharVar = 'Hello from P3770';
dsply theCharVar;
callp localProc();
P1759();
P2629();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3770 in the procedure';
end-proc;