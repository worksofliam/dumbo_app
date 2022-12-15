**free

ctl-opt dftactgrp(*no);

dcl-pi P1514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P1507.rpgleinc'
/copy 'qrpgleref/P1261.rpgleinc'

dcl-ds theTable extname('T6') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T6 LIMIT 1;

theCharVar = 'Hello from P1514';
dsply theCharVar;
callp localProc();
P302();
P1507();
P1261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1514 in the procedure';
end-proc;