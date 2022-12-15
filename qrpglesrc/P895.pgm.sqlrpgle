**free

ctl-opt dftactgrp(*no);

dcl-pi P895;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P356.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T1164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1164 LIMIT 1;

theCharVar = 'Hello from P895';
dsply theCharVar;
callp localProc();
P711();
P356();
P1();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P895 in the procedure';
end-proc;