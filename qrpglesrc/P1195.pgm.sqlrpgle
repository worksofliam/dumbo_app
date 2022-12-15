**free

ctl-opt dftactgrp(*no);

dcl-pi P1195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P1001.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'

dcl-ds T388 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T388 FROM T388 LIMIT 1;

theCharVar = 'Hello from P1195';
dsply theCharVar;
callp localProc();
P1117();
P1001();
P749();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1195 in the procedure';
end-proc;