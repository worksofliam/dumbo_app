**free

ctl-opt dftactgrp(*no);

dcl-pi P2321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds theTable extname('T488') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T488 LIMIT 1;

theCharVar = 'Hello from P2321';
dsply theCharVar;
callp localProc();
P522();
P190();
P351();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2321 in the procedure';
end-proc;