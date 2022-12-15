**free

ctl-opt dftactgrp(*no);

dcl-pi P3946;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P2691.rpgleinc'
/copy 'qrpgleref/P2648.rpgleinc'

dcl-ds theTable extname('T231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T231 LIMIT 1;

theCharVar = 'Hello from P3946';
dsply theCharVar;
callp localProc();
P943();
P2691();
P2648();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3946 in the procedure';
end-proc;