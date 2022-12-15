**free

ctl-opt dftactgrp(*no);

dcl-pi P3542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3522.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'
/copy 'qrpgleref/P1484.rpgleinc'

dcl-ds theTable extname('T1829') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1829 LIMIT 1;

theCharVar = 'Hello from P3542';
dsply theCharVar;
callp localProc();
P3522();
P817();
P1484();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3542 in the procedure';
end-proc;