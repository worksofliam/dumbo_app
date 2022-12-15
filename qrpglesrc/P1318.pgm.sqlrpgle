**free

ctl-opt dftactgrp(*no);

dcl-pi P1318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1028.rpgleinc'
/copy 'qrpgleref/P751.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T489 LIMIT 1;

theCharVar = 'Hello from P1318';
dsply theCharVar;
callp localProc();
P1028();
P751();
P55();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1318 in the procedure';
end-proc;