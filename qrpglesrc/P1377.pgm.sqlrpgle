**free

ctl-opt dftactgrp(*no);

dcl-pi P1377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1003.rpgleinc'
/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'

dcl-ds theTable extname('T966') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T966 LIMIT 1;

theCharVar = 'Hello from P1377';
dsply theCharVar;
callp localProc();
P1003();
P650();
P259();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1377 in the procedure';
end-proc;