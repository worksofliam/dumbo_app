**free

ctl-opt dftactgrp(*no);

dcl-pi P3674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3101.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P565.rpgleinc'

dcl-ds theTable extname('T599') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T599 LIMIT 1;

theCharVar = 'Hello from P3674';
dsply theCharVar;
callp localProc();
P3101();
P503();
P565();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3674 in the procedure';
end-proc;