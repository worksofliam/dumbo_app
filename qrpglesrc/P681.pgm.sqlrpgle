**free

ctl-opt dftactgrp(*no);

dcl-pi P681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P452.rpgleinc'

dcl-ds T397 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T397 FROM T397 LIMIT 1;

theCharVar = 'Hello from P681';
dsply theCharVar;
callp localProc();
P298();
P121();
P452();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P681 in the procedure';
end-proc;