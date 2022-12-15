**free

ctl-opt dftactgrp(*no);

dcl-pi P754;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'

dcl-ds theTable extname('T838') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T838 LIMIT 1;

theCharVar = 'Hello from P754';
dsply theCharVar;
callp localProc();
P6();
P154();
P472();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P754 in the procedure';
end-proc;