**free

ctl-opt dftactgrp(*no);

dcl-pi P3547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P2439.rpgleinc'

dcl-ds theTable extname('T1432') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1432 LIMIT 1;

theCharVar = 'Hello from P3547';
dsply theCharVar;
callp localProc();
P791();
P217();
P2439();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3547 in the procedure';
end-proc;