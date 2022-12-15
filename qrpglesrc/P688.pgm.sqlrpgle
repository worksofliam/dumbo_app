**free

ctl-opt dftactgrp(*no);

dcl-pi P688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'

dcl-ds T677 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T677 FROM T677 LIMIT 1;

theCharVar = 'Hello from P688';
dsply theCharVar;
callp localProc();
P423();
P606();
P309();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P688 in the procedure';
end-proc;