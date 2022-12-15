**free

ctl-opt dftactgrp(*no);

dcl-pi P593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds theTable extname('T477') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T477 LIMIT 1;

theCharVar = 'Hello from P593';
dsply theCharVar;
callp localProc();
P139();
P542();
P181();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P593 in the procedure';
end-proc;