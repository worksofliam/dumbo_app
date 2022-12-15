**free

ctl-opt dftactgrp(*no);

dcl-pi P1257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1211.rpgleinc'
/copy 'qrpgleref/P1218.rpgleinc'
/copy 'qrpgleref/P962.rpgleinc'

dcl-ds theTable extname('T1564') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1564 LIMIT 1;

theCharVar = 'Hello from P1257';
dsply theCharVar;
callp localProc();
P1211();
P1218();
P962();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1257 in the procedure';
end-proc;