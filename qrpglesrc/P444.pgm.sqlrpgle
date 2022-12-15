**free

ctl-opt dftactgrp(*no);

dcl-pi P444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'

dcl-ds theTable extname('T430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T430 LIMIT 1;

theCharVar = 'Hello from P444';
dsply theCharVar;
callp localProc();
P182();
P63();
P245();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P444 in the procedure';
end-proc;