**free

ctl-opt dftactgrp(*no);

dcl-pi P853;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds T453 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T453 FROM T453 LIMIT 1;

theCharVar = 'Hello from P853';
dsply theCharVar;
callp localProc();
P591();
P297();
P85();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P853 in the procedure';
end-proc;