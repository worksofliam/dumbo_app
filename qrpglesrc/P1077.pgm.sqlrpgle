**free

ctl-opt dftactgrp(*no);

dcl-pi P1077;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P1017.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds theTable extname('T198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T198 LIMIT 1;

theCharVar = 'Hello from P1077';
dsply theCharVar;
callp localProc();
P129();
P1017();
P383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1077 in the procedure';
end-proc;