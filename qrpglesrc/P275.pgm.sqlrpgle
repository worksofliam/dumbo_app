**free

ctl-opt dftactgrp(*no);

dcl-pi P275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds theTable extname('T5') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T5 LIMIT 1;

theCharVar = 'Hello from P275';
dsply theCharVar;
callp localProc();
P208();
P144();
P70();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P275 in the procedure';
end-proc;