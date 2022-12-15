**free

ctl-opt dftactgrp(*no);

dcl-pi P1011;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P1011';
dsply theCharVar;
callp localProc();
P629();
P704();
P454();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1011 in the procedure';
end-proc;