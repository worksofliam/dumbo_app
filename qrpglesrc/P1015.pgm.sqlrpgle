**free

ctl-opt dftactgrp(*no);

dcl-pi P1015;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P984.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds theTable extname('T368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T368 LIMIT 1;

theCharVar = 'Hello from P1015';
dsply theCharVar;
callp localProc();
P984();
P119();
P96();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1015 in the procedure';
end-proc;