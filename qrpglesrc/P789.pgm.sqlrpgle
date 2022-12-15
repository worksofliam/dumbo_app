**free

ctl-opt dftactgrp(*no);

dcl-pi P789;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'

dcl-ds theTable extname('T205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T205 LIMIT 1;

theCharVar = 'Hello from P789';
dsply theCharVar;
callp localProc();
P554();
P664();
P617();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P789 in the procedure';
end-proc;