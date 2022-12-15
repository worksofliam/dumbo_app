**free

ctl-opt dftactgrp(*no);

dcl-pi P227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P227';
dsply theCharVar;
callp localProc();
P26();
P90();
P114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P227 in the procedure';
end-proc;