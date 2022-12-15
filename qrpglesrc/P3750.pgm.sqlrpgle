**free

ctl-opt dftactgrp(*no);

dcl-pi P3750;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P3214.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'

dcl-ds theTable extname('T1770') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1770 LIMIT 1;

theCharVar = 'Hello from P3750';
dsply theCharVar;
callp localProc();
P29();
P3214();
P461();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3750 in the procedure';
end-proc;