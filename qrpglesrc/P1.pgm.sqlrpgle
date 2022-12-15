**free

ctl-opt dftactgrp(*no);

dcl-pi P1;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T210 LIMIT 1;

theCharVar = 'Hello from P1';
dsply theCharVar;
callp localProc();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1 in the procedure';
end-proc;