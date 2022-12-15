**free

ctl-opt dftactgrp(*no);

dcl-pi P164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds theTable extname('T83') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T83 LIMIT 1;

theCharVar = 'Hello from P164';
dsply theCharVar;
callp localProc();
P0();
P98();
P60();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P164 in the procedure';
end-proc;