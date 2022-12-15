**free

ctl-opt dftactgrp(*no);

dcl-pi P1126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'

dcl-ds theTable extname('T1831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1831 LIMIT 1;

theCharVar = 'Hello from P1126';
dsply theCharVar;
callp localProc();
P538();
P328();
P511();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1126 in the procedure';
end-proc;