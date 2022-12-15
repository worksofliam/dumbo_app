**free

ctl-opt dftactgrp(*no);

dcl-pi P3158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2420.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P2405.rpgleinc'

dcl-ds theTable extname('T1484') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1484 LIMIT 1;

theCharVar = 'Hello from P3158';
dsply theCharVar;
callp localProc();
P2420();
P142();
P2405();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3158 in the procedure';
end-proc;