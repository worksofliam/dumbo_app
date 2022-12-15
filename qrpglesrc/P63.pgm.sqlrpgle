**free

ctl-opt dftactgrp(*no);

dcl-pi P63;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T488') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T488 LIMIT 1;

theCharVar = 'Hello from P63';
dsply theCharVar;
callp localProc();
P53();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P63 in the procedure';
end-proc;