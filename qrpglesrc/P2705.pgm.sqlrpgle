**free

ctl-opt dftactgrp(*no);

dcl-pi P2705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P1868.rpgleinc'
/copy 'qrpgleref/P1012.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P2705';
dsply theCharVar;
callp localProc();
P1055();
P1868();
P1012();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2705 in the procedure';
end-proc;