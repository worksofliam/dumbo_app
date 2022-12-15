**free

ctl-opt dftactgrp(*no);

dcl-pi P1882;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1635.rpgleinc'
/copy 'qrpgleref/P1309.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'

dcl-ds theTable extname('T1429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1429 LIMIT 1;

theCharVar = 'Hello from P1882';
dsply theCharVar;
callp localProc();
P1635();
P1309();
P329();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1882 in the procedure';
end-proc;