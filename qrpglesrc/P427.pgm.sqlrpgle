**free

ctl-opt dftactgrp(*no);

dcl-pi P427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'

dcl-ds theTable extname('T925') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T925 LIMIT 1;

theCharVar = 'Hello from P427';
dsply theCharVar;
callp localProc();
P117();
P133();
P238();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P427 in the procedure';
end-proc;