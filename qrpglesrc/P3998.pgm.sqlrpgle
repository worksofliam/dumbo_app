**free

ctl-opt dftactgrp(*no);

dcl-pi P3998;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1268.rpgleinc'
/copy 'qrpgleref/P3637.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T1231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1231 LIMIT 1;

theCharVar = 'Hello from P3998';
dsply theCharVar;
callp localProc();
P1268();
P3637();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3998 in the procedure';
end-proc;