**free

ctl-opt dftactgrp(*no);

dcl-pi P1283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'

dcl-ds theTable extname('T1163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1163 LIMIT 1;

theCharVar = 'Hello from P1283';
dsply theCharVar;
callp localProc();
P895();
P660();
P274();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1283 in the procedure';
end-proc;