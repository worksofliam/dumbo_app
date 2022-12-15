**free

ctl-opt dftactgrp(*no);

dcl-pi P3244;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P856.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'
/copy 'qrpgleref/P1275.rpgleinc'

dcl-ds theTable extname('T660') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T660 LIMIT 1;

theCharVar = 'Hello from P3244';
dsply theCharVar;
callp localProc();
P856();
P949();
P1275();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3244 in the procedure';
end-proc;