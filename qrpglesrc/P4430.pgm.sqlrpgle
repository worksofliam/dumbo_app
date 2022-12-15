**free

ctl-opt dftactgrp(*no);

dcl-pi P4430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P1940.rpgleinc'
/copy 'qrpgleref/P1787.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P4430';
dsply theCharVar;
callp localProc();
P466();
P1940();
P1787();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4430 in the procedure';
end-proc;