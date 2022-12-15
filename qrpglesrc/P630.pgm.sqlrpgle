**free

ctl-opt dftactgrp(*no);

dcl-pi P630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'

dcl-ds theTable extname('T1031') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1031 LIMIT 1;

theCharVar = 'Hello from P630';
dsply theCharVar;
callp localProc();
P478();
P78();
P473();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P630 in the procedure';
end-proc;