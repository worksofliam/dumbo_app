**free

ctl-opt dftactgrp(*no);

dcl-pi P506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P506';
dsply theCharVar;
callp localProc();
P358();
P209();
P295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P506 in the procedure';
end-proc;