**free

ctl-opt dftactgrp(*no);

dcl-pi P716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P716';
dsply theCharVar;
callp localProc();
P494();
P254();
P402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P716 in the procedure';
end-proc;