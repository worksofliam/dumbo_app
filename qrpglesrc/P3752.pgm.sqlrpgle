**free

ctl-opt dftactgrp(*no);

dcl-pi P3752;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1465.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P2558.rpgleinc'

dcl-ds T742 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T742 FROM T742 LIMIT 1;

theCharVar = 'Hello from P3752';
dsply theCharVar;
callp localProc();
P1465();
P345();
P2558();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3752 in the procedure';
end-proc;