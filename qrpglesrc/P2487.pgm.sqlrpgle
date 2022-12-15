**free

ctl-opt dftactgrp(*no);

dcl-pi P2487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P792.rpgleinc'
/copy 'qrpgleref/P1819.rpgleinc'
/copy 'qrpgleref/P1407.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P2487';
dsply theCharVar;
callp localProc();
P792();
P1819();
P1407();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2487 in the procedure';
end-proc;