**free

ctl-opt dftactgrp(*no);

dcl-pi P3600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P3573.rpgleinc'
/copy 'qrpgleref/P1659.rpgleinc'

dcl-ds theTable extname('T39') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T39 LIMIT 1;

theCharVar = 'Hello from P3600';
dsply theCharVar;
callp localProc();
P524();
P3573();
P1659();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3600 in the procedure';
end-proc;