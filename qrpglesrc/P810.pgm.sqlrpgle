**free

ctl-opt dftactgrp(*no);

dcl-pi P810;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P448.rpgleinc'

dcl-ds theTable extname('T392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T392 LIMIT 1;

theCharVar = 'Hello from P810';
dsply theCharVar;
callp localProc();
P13();
P169();
P448();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P810 in the procedure';
end-proc;