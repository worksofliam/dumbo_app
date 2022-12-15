**free

ctl-opt dftactgrp(*no);

dcl-pi P4498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3475.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P2388.rpgleinc'

dcl-ds T928 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T928 FROM T928 LIMIT 1;

theCharVar = 'Hello from P4498';
dsply theCharVar;
callp localProc();
P3475();
P516();
P2388();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4498 in the procedure';
end-proc;