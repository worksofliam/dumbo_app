**free

ctl-opt dftactgrp(*no);

dcl-pi P3476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P3183.rpgleinc'
/copy 'qrpgleref/P2830.rpgleinc'

dcl-ds theTable extname('T611') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T611 LIMIT 1;

theCharVar = 'Hello from P3476';
dsply theCharVar;
callp localProc();
P465();
P3183();
P2830();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3476 in the procedure';
end-proc;