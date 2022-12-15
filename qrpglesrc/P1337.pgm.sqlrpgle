**free

ctl-opt dftactgrp(*no);

dcl-pi P1337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T1763') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1763 LIMIT 1;

theCharVar = 'Hello from P1337';
dsply theCharVar;
callp localProc();
P152();
P943();
P207();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1337 in the procedure';
end-proc;