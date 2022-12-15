**free

ctl-opt dftactgrp(*no);

dcl-pi P1793;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P884.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds theTable extname('T541') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T541 LIMIT 1;

theCharVar = 'Hello from P1793';
dsply theCharVar;
callp localProc();
P505();
P884();
P32();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1793 in the procedure';
end-proc;