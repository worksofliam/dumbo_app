**free

ctl-opt dftactgrp(*no);

dcl-pi P1103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'

dcl-ds T628 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T628 FROM T628 LIMIT 1;

theCharVar = 'Hello from P1103';
dsply theCharVar;
callp localProc();
P552();
P591();
P695();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1103 in the procedure';
end-proc;