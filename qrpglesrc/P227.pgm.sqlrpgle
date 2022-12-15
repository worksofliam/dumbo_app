**free

ctl-opt dftactgrp(*no);

dcl-pi P227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P227';
dsply theCharVar;
callp localProc();
P107();
P35();
P192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P227 in the procedure';
end-proc;