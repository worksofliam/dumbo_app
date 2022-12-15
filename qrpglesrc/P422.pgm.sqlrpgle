**free

ctl-opt dftactgrp(*no);

dcl-pi P422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds T110 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T110 FROM T110 LIMIT 1;

theCharVar = 'Hello from P422';
dsply theCharVar;
callp localProc();
P19();
P17();
P205();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P422 in the procedure';
end-proc;