**free

ctl-opt dftactgrp(*no);

dcl-pi P1694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1544.rpgleinc'
/copy 'qrpgleref/P1504.rpgleinc'
/copy 'qrpgleref/P1064.rpgleinc'

dcl-ds T523 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T523 FROM T523 LIMIT 1;

theCharVar = 'Hello from P1694';
dsply theCharVar;
callp localProc();
P1544();
P1504();
P1064();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1694 in the procedure';
end-proc;