**free

ctl-opt dftactgrp(*no);

dcl-pi P527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds theTable extname('T41') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T41 LIMIT 1;

theCharVar = 'Hello from P527';
dsply theCharVar;
callp localProc();
P70();
P414();
P35();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P527 in the procedure';
end-proc;