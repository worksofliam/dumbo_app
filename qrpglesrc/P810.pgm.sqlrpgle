**free

ctl-opt dftactgrp(*no);

dcl-pi P810;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P810';
dsply theCharVar;
callp localProc();
P13();
P359();
P584();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P810 in the procedure';
end-proc;