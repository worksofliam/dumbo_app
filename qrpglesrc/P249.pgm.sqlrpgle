**free

ctl-opt dftactgrp(*no);

dcl-pi P249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'

dcl-ds theTable extname('T475') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T475 LIMIT 1;

theCharVar = 'Hello from P249';
dsply theCharVar;
callp localProc();
P63();
P127();
P152();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P249 in the procedure';
end-proc;