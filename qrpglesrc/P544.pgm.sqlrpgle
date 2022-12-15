**free

ctl-opt dftactgrp(*no);

dcl-pi P544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P544';
dsply theCharVar;
callp localProc();
P354();
P180();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P544 in the procedure';
end-proc;