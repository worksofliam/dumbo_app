**free

ctl-opt dftactgrp(*no);

dcl-pi P625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'
/copy 'qrpgleref/P540.rpgleinc'

dcl-ds theTable extname('T390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T390 LIMIT 1;

theCharVar = 'Hello from P625';
dsply theCharVar;
callp localProc();
P283();
P611();
P540();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P625 in the procedure';
end-proc;