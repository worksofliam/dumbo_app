**free

ctl-opt dftactgrp(*no);

dcl-pi P918;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'

dcl-ds theTable extname('T302') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T302 LIMIT 1;

theCharVar = 'Hello from P918';
dsply theCharVar;
callp localProc();
P193();
P720();
P371();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P918 in the procedure';
end-proc;