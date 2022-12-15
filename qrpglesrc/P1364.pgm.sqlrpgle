**free

ctl-opt dftactgrp(*no);

dcl-pi P1364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1225.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds T108 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T108 FROM T108 LIMIT 1;

theCharVar = 'Hello from P1364';
dsply theCharVar;
callp localProc();
P1225();
P687();
P324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1364 in the procedure';
end-proc;