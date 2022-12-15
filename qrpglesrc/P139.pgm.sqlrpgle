**free

ctl-opt dftactgrp(*no);

dcl-pi P139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds theTable extname('T1094') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1094 LIMIT 1;

theCharVar = 'Hello from P139';
dsply theCharVar;
callp localProc();
P48();
P74();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P139 in the procedure';
end-proc;