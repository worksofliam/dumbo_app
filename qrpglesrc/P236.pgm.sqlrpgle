**free

ctl-opt dftactgrp(*no);

dcl-pi P236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T1112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1112 LIMIT 1;

theCharVar = 'Hello from P236';
dsply theCharVar;
callp localProc();
P222();
P166();
P55();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P236 in the procedure';
end-proc;