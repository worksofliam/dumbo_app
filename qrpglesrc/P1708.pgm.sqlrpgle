**free

ctl-opt dftactgrp(*no);

dcl-pi P1708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1047.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P997.rpgleinc'

dcl-ds theTable extname('T758') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T758 LIMIT 1;

theCharVar = 'Hello from P1708';
dsply theCharVar;
callp localProc();
P1047();
P521();
P997();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1708 in the procedure';
end-proc;