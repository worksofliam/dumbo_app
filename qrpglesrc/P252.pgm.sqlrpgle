**free

ctl-opt dftactgrp(*no);

dcl-pi P252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds T78 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T78 FROM T78 LIMIT 1;

theCharVar = 'Hello from P252';
dsply theCharVar;
callp localProc();
P117();
P27();
P178();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P252 in the procedure';
end-proc;