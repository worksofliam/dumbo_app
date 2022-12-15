**free

ctl-opt dftactgrp(*no);

dcl-pi P3926;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P1388.rpgleinc'
/copy 'qrpgleref/P2604.rpgleinc'

dcl-ds theTable extname('T20') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T20 LIMIT 1;

theCharVar = 'Hello from P3926';
dsply theCharVar;
callp localProc();
P653();
P1388();
P2604();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3926 in the procedure';
end-proc;