**free

ctl-opt dftactgrp(*no);

dcl-pi P440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds theTable extname('T969') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T969 LIMIT 1;

theCharVar = 'Hello from P440';
dsply theCharVar;
callp localProc();
P242();
P418();
P70();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P440 in the procedure';
end-proc;