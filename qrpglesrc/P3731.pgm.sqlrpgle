**free

ctl-opt dftactgrp(*no);

dcl-pi P3731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P3654.rpgleinc'

dcl-ds theTable extname('T1385') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1385 LIMIT 1;

theCharVar = 'Hello from P3731';
dsply theCharVar;
callp localProc();
P812();
P486();
P3654();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3731 in the procedure';
end-proc;