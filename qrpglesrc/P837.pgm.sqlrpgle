**free

ctl-opt dftactgrp(*no);

dcl-pi P837;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P786.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds theTable extname('T727') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T727 LIMIT 1;

theCharVar = 'Hello from P837';
dsply theCharVar;
callp localProc();
P786();
P431();
P728();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P837 in the procedure';
end-proc;