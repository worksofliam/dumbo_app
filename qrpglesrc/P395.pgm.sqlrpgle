**free

ctl-opt dftactgrp(*no);

dcl-pi P395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'

dcl-ds theTable extname('T668') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T668 LIMIT 1;

theCharVar = 'Hello from P395';
dsply theCharVar;
callp localProc();
P119();
P129();
P214();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P395 in the procedure';
end-proc;