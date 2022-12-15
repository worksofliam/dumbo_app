**free

ctl-opt dftactgrp(*no);

dcl-pi P55;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds theTable extname('T579') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T579 LIMIT 1;

theCharVar = 'Hello from P55';
dsply theCharVar;
callp localProc();
P28();
P42();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P55 in the procedure';
end-proc;