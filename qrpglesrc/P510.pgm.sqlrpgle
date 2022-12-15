**free

ctl-opt dftactgrp(*no);

dcl-pi P510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds theTable extname('T506') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T506 LIMIT 1;

theCharVar = 'Hello from P510';
dsply theCharVar;
callp localProc();
P217();
P46();
P251();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P510 in the procedure';
end-proc;