**free

ctl-opt dftactgrp(*no);

dcl-pi P3412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1768.rpgleinc'
/copy 'qrpgleref/P3040.rpgleinc'
/copy 'qrpgleref/P2560.rpgleinc'

dcl-ds theTable extname('T542') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T542 LIMIT 1;

theCharVar = 'Hello from P3412';
dsply theCharVar;
callp localProc();
P1768();
P3040();
P2560();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3412 in the procedure';
end-proc;