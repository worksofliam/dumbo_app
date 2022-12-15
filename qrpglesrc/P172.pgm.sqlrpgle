**free

ctl-opt dftactgrp(*no);

dcl-pi P172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T192 FROM T192 LIMIT 1;

theCharVar = 'Hello from P172';
dsply theCharVar;
callp localProc();
P31();
P24();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P172 in the procedure';
end-proc;