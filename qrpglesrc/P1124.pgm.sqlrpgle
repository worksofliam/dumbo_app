**free

ctl-opt dftactgrp(*no);

dcl-pi P1124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1074.rpgleinc'
/copy 'qrpgleref/P992.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds theTable extname('T83') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T83 LIMIT 1;

theCharVar = 'Hello from P1124';
dsply theCharVar;
callp localProc();
P1074();
P992();
P179();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1124 in the procedure';
end-proc;