**free

ctl-opt dftactgrp(*no);

dcl-pi P580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P312.rpgleinc'

dcl-ds theTable extname('T366') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T366 LIMIT 1;

theCharVar = 'Hello from P580';
dsply theCharVar;
callp localProc();
P243();
P540();
P312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P580 in the procedure';
end-proc;