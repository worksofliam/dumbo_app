**free

ctl-opt dftactgrp(*no);

dcl-pi P3762;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P2014.rpgleinc'

dcl-ds theTable extname('T807') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T807 LIMIT 1;

theCharVar = 'Hello from P3762';
dsply theCharVar;
callp localProc();
P38();
P173();
P2014();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3762 in the procedure';
end-proc;