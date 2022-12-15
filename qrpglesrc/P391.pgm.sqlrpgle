**free

ctl-opt dftactgrp(*no);

dcl-pi P391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds T56 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T56 FROM T56 LIMIT 1;

theCharVar = 'Hello from P391';
dsply theCharVar;
callp localProc();
P167();
P30();
P124();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P391 in the procedure';
end-proc;