**free

ctl-opt dftactgrp(*no);

dcl-pi P973;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P686.rpgleinc'
/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds theTable extname('T1481') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1481 LIMIT 1;

theCharVar = 'Hello from P973';
dsply theCharVar;
callp localProc();
P686();
P639();
P114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P973 in the procedure';
end-proc;