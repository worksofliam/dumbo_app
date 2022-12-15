**free

ctl-opt dftactgrp(*no);

dcl-pi P1488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T578') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T578 LIMIT 1;

theCharVar = 'Hello from P1488';
dsply theCharVar;
callp localProc();
P742();
P292();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1488 in the procedure';
end-proc;