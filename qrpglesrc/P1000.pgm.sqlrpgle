**free

ctl-opt dftactgrp(*no);

dcl-pi P1000;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'

dcl-ds theTable extname('T1151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1151 LIMIT 1;

theCharVar = 'Hello from P1000';
dsply theCharVar;
callp localProc();
P638();
P895();
P349();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1000 in the procedure';
end-proc;