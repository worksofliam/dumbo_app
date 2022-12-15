**free

ctl-opt dftactgrp(*no);

dcl-pi P1342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P512.rpgleinc'

dcl-ds theTable extname('T389') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T389 LIMIT 1;

theCharVar = 'Hello from P1342';
dsply theCharVar;
callp localProc();
P1055();
P387();
P512();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1342 in the procedure';
end-proc;