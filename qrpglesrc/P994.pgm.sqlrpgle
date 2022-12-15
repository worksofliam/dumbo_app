**free

ctl-opt dftactgrp(*no);

dcl-pi P994;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P574.rpgleinc'
/copy 'qrpgleref/P917.rpgleinc'

dcl-ds theTable extname('T195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T195 LIMIT 1;

theCharVar = 'Hello from P994';
dsply theCharVar;
callp localProc();
P127();
P574();
P917();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P994 in the procedure';
end-proc;