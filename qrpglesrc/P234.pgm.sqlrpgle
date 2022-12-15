**free

ctl-opt dftactgrp(*no);

dcl-pi P234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds theTable extname('T882') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T882 LIMIT 1;

theCharVar = 'Hello from P234';
dsply theCharVar;
callp localProc();
P115();
P149();
P138();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P234 in the procedure';
end-proc;