**free

ctl-opt dftactgrp(*no);

dcl-pi P965;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P724.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds theTable extname('T1010') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1010 LIMIT 1;

theCharVar = 'Hello from P965';
dsply theCharVar;
callp localProc();
P724();
P651();
P127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P965 in the procedure';
end-proc;