**free

ctl-opt dftactgrp(*no);

dcl-pi P1915;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P623.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'

dcl-ds T216 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T216 FROM T216 LIMIT 1;

theCharVar = 'Hello from P1915';
dsply theCharVar;
callp localProc();
P53();
P623();
P373();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1915 in the procedure';
end-proc;