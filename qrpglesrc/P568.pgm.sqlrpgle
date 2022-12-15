**free

ctl-opt dftactgrp(*no);

dcl-pi P568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P568';
dsply theCharVar;
callp localProc();
P20();
P19();
P174();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P568 in the procedure';
end-proc;