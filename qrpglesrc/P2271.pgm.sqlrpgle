**free

ctl-opt dftactgrp(*no);

dcl-pi P2271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P905.rpgleinc'
/copy 'qrpgleref/P1877.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'

dcl-ds theTable extname('T317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T317 LIMIT 1;

theCharVar = 'Hello from P2271';
dsply theCharVar;
callp localProc();
P905();
P1877();
P444();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2271 in the procedure';
end-proc;