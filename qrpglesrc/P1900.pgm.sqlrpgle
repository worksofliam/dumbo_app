**free

ctl-opt dftactgrp(*no);

dcl-pi P1900;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P559.rpgleinc'
/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds T761 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T761 FROM T761 LIMIT 1;

theCharVar = 'Hello from P1900';
dsply theCharVar;
callp localProc();
P559();
P452();
P193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1900 in the procedure';
end-proc;