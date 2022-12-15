**free

ctl-opt dftactgrp(*no);

dcl-pi P3260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1122.rpgleinc'
/copy 'qrpgleref/P1818.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'

dcl-ds theTable extname('T970') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T970 LIMIT 1;

theCharVar = 'Hello from P3260';
dsply theCharVar;
callp localProc();
P1122();
P1818();
P664();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3260 in the procedure';
end-proc;