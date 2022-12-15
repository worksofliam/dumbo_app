**free

ctl-opt dftactgrp(*no);

dcl-pi P3108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2517.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'
/copy 'qrpgleref/P1781.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P3108';
dsply theCharVar;
callp localProc();
P2517();
P363();
P1781();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3108 in the procedure';
end-proc;