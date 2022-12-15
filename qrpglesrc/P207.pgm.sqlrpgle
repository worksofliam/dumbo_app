**free

ctl-opt dftactgrp(*no);

dcl-pi P207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'

dcl-ds theTable extname('T111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T111 LIMIT 1;

theCharVar = 'Hello from P207';
dsply theCharVar;
callp localProc();
P188();
P20();
P97();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P207 in the procedure';
end-proc;