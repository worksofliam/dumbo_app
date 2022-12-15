**free

ctl-opt dftactgrp(*no);

dcl-pi P514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'

dcl-ds theTable extname('T414') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T414 LIMIT 1;

theCharVar = 'Hello from P514';
dsply theCharVar;
callp localProc();
P503();
P101();
P434();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P514 in the procedure';
end-proc;