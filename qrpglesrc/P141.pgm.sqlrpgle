**free

ctl-opt dftactgrp(*no);

dcl-pi P141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds theTable extname('T955') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T955 LIMIT 1;

theCharVar = 'Hello from P141';
dsply theCharVar;
callp localProc();
P21();
P131();
P137();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P141 in the procedure';
end-proc;