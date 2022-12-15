**free

ctl-opt dftactgrp(*no);

dcl-pi P1230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P1035.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'

dcl-ds theTable extname('T1032') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1032 LIMIT 1;

theCharVar = 'Hello from P1230';
dsply theCharVar;
callp localProc();
P11();
P1035();
P247();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1230 in the procedure';
end-proc;