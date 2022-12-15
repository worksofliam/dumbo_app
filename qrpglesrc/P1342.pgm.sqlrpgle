**free

ctl-opt dftactgrp(*no);

dcl-pi P1342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P941.rpgleinc'
/copy 'qrpgleref/P1279.rpgleinc'
/copy 'qrpgleref/P985.rpgleinc'

dcl-ds T97 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T97 FROM T97 LIMIT 1;

theCharVar = 'Hello from P1342';
dsply theCharVar;
callp localProc();
P941();
P1279();
P985();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1342 in the procedure';
end-proc;