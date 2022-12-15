**free

ctl-opt dftactgrp(*no);

dcl-pi P3073;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P2986.rpgleinc'
/copy 'qrpgleref/P950.rpgleinc'

dcl-ds theTable extname('T1011') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1011 LIMIT 1;

theCharVar = 'Hello from P3073';
dsply theCharVar;
callp localProc();
P619();
P2986();
P950();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3073 in the procedure';
end-proc;