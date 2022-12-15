**free

ctl-opt dftactgrp(*no);

dcl-pi P1079;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'
/copy 'qrpgleref/P1046.rpgleinc'

dcl-ds theTable extname('T984') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T984 LIMIT 1;

theCharVar = 'Hello from P1079';
dsply theCharVar;
callp localProc();
P189();
P825();
P1046();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1079 in the procedure';
end-proc;