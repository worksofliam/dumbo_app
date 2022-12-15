**free

ctl-opt dftactgrp(*no);

dcl-pi P819;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds T586 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T586 FROM T586 LIMIT 1;

theCharVar = 'Hello from P819';
dsply theCharVar;
callp localProc();
P19();
P89();
P187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P819 in the procedure';
end-proc;