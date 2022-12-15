**free

ctl-opt dftactgrp(*no);

dcl-pi P1050;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1015.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'

dcl-ds theTable extname('T604') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T604 LIMIT 1;

theCharVar = 'Hello from P1050';
dsply theCharVar;
callp localProc();
P1015();
P60();
P275();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1050 in the procedure';
end-proc;