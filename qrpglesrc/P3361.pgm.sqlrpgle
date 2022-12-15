**free

ctl-opt dftactgrp(*no);

dcl-pi P3361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3342.rpgleinc'
/copy 'qrpgleref/P3105.rpgleinc'
/copy 'qrpgleref/P2276.rpgleinc'

dcl-ds theTable extname('T41') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T41 LIMIT 1;

theCharVar = 'Hello from P3361';
dsply theCharVar;
callp localProc();
P3342();
P3105();
P2276();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3361 in the procedure';
end-proc;