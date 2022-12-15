**free

ctl-opt dftactgrp(*no);

dcl-pi P2422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1106.rpgleinc'
/copy 'qrpgleref/P997.rpgleinc'
/copy 'qrpgleref/P2179.rpgleinc'

dcl-ds theTable extname('T1087') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1087 LIMIT 1;

theCharVar = 'Hello from P2422';
dsply theCharVar;
callp localProc();
P1106();
P997();
P2179();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2422 in the procedure';
end-proc;