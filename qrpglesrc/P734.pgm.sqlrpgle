**free

ctl-opt dftactgrp(*no);

dcl-pi P734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T196 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T196 FROM T196 LIMIT 1;

theCharVar = 'Hello from P734';
dsply theCharVar;
callp localProc();
P251();
P75();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P734 in the procedure';
end-proc;