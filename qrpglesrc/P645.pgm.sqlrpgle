**free

ctl-opt dftactgrp(*no);

dcl-pi P645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P440.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds T137 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T137 FROM T137 LIMIT 1;

theCharVar = 'Hello from P645';
dsply theCharVar;
callp localProc();
P440();
P318();
P187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P645 in the procedure';
end-proc;