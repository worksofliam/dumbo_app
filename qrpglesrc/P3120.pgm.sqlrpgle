**free

ctl-opt dftactgrp(*no);

dcl-pi P3120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P3050.rpgleinc'
/copy 'qrpgleref/P986.rpgleinc'

dcl-ds theTable extname('T360') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T360 LIMIT 1;

theCharVar = 'Hello from P3120';
dsply theCharVar;
callp localProc();
P796();
P3050();
P986();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3120 in the procedure';
end-proc;