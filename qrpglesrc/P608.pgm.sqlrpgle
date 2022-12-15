**free

ctl-opt dftactgrp(*no);

dcl-pi P608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'

dcl-ds theTable extname('T82') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T82 LIMIT 1;

theCharVar = 'Hello from P608';
dsply theCharVar;
callp localProc();
P398();
P381();
P411();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P608 in the procedure';
end-proc;