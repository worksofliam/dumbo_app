**free

ctl-opt dftactgrp(*no);

dcl-pi P2957;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2185.rpgleinc'
/copy 'qrpgleref/P1356.rpgleinc'
/copy 'qrpgleref/P1324.rpgleinc'

dcl-ds theTable extname('T865') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T865 LIMIT 1;

theCharVar = 'Hello from P2957';
dsply theCharVar;
callp localProc();
P2185();
P1356();
P1324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2957 in the procedure';
end-proc;