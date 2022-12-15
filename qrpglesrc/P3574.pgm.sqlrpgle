**free

ctl-opt dftactgrp(*no);

dcl-pi P3574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P1463.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds theTable extname('T795') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T795 LIMIT 1;

theCharVar = 'Hello from P3574';
dsply theCharVar;
callp localProc();
P373();
P1463();
P135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3574 in the procedure';
end-proc;