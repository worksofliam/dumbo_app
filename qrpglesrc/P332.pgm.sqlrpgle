**free

ctl-opt dftactgrp(*no);

dcl-pi P332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P332';
dsply theCharVar;
callp localProc();
P268();
P63();
P103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P332 in the procedure';
end-proc;