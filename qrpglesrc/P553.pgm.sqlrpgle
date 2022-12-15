**free

ctl-opt dftactgrp(*no);

dcl-pi P553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds theTable extname('T220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T220 LIMIT 1;

theCharVar = 'Hello from P553';
dsply theCharVar;
callp localProc();
P332();
P522();
P262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P553 in the procedure';
end-proc;