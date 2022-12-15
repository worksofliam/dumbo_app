**free

ctl-opt dftactgrp(*no);

dcl-pi P887;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'

dcl-ds theTable extname('T207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T207 LIMIT 1;

theCharVar = 'Hello from P887';
dsply theCharVar;
callp localProc();
P886();
P20();
P442();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P887 in the procedure';
end-proc;