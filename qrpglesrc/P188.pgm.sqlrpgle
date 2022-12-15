**free

ctl-opt dftactgrp(*no);

dcl-pi P188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T242 LIMIT 1;

theCharVar = 'Hello from P188';
dsply theCharVar;
callp localProc();
P133();
P2();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P188 in the procedure';
end-proc;