**free

ctl-opt dftactgrp(*no);

dcl-pi P2731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P534.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'
/copy 'qrpgleref/P2480.rpgleinc'

dcl-ds theTable extname('T785') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T785 LIMIT 1;

theCharVar = 'Hello from P2731';
dsply theCharVar;
callp localProc();
P534();
P1150();
P2480();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2731 in the procedure';
end-proc;