**free

ctl-opt dftactgrp(*no);

dcl-pi P624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P624';
dsply theCharVar;
callp localProc();
P383();
P621();
P211();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P624 in the procedure';
end-proc;