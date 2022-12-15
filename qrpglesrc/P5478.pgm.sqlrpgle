**free

ctl-opt dftactgrp(*no);

dcl-pi P5478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P1311.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'

dcl-ds T237 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T237 FROM T237 LIMIT 1;

theCharVar = 'Hello from P5478';
dsply theCharVar;
callp localProc();
P929();
P1311();
P1019();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5478 in the procedure';
end-proc;