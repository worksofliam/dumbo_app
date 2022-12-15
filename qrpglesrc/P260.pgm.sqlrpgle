**free

ctl-opt dftactgrp(*no);

dcl-pi P260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds T933 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T933 FROM T933 LIMIT 1;

theCharVar = 'Hello from P260';
dsply theCharVar;
callp localProc();
P170();
P35();
P187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P260 in the procedure';
end-proc;