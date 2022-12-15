**free

ctl-opt dftactgrp(*no);

dcl-pi P2415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P792.rpgleinc'
/copy 'qrpgleref/P2181.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'

dcl-ds theTable extname('T1463') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1463 LIMIT 1;

theCharVar = 'Hello from P2415';
dsply theCharVar;
callp localProc();
P792();
P2181();
P303();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2415 in the procedure';
end-proc;