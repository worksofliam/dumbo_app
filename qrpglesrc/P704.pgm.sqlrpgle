**free

ctl-opt dftactgrp(*no);

dcl-pi P704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds theTable extname('T108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T108 LIMIT 1;

theCharVar = 'Hello from P704';
dsply theCharVar;
callp localProc();
P327();
P45();
P158();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P704 in the procedure';
end-proc;