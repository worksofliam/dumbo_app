**free

ctl-opt dftactgrp(*no);

dcl-pi P3884;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1956.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'

dcl-ds theTable extname('T636') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T636 LIMIT 1;

theCharVar = 'Hello from P3884';
dsply theCharVar;
callp localProc();
P1956();
P720();
P868();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3884 in the procedure';
end-proc;