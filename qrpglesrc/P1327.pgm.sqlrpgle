**free

ctl-opt dftactgrp(*no);

dcl-pi P1327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P1077.rpgleinc'

dcl-ds theTable extname('T88') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T88 LIMIT 1;

theCharVar = 'Hello from P1327';
dsply theCharVar;
callp localProc();
P591();
P321();
P1077();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1327 in the procedure';
end-proc;