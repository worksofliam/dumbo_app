**free

ctl-opt dftactgrp(*no);

dcl-pi P3929;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2951.rpgleinc'
/copy 'qrpgleref/P3845.rpgleinc'
/copy 'qrpgleref/P1623.rpgleinc'

dcl-ds theTable extname('T836') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T836 LIMIT 1;

theCharVar = 'Hello from P3929';
dsply theCharVar;
callp localProc();
P2951();
P3845();
P1623();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3929 in the procedure';
end-proc;