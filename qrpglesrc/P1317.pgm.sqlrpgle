**free

ctl-opt dftactgrp(*no);

dcl-pi P1317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P905.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'

dcl-ds theTable extname('T471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T471 LIMIT 1;

theCharVar = 'Hello from P1317';
dsply theCharVar;
callp localProc();
P905();
P646();
P485();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1317 in the procedure';
end-proc;