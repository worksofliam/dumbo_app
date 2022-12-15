**free

ctl-opt dftactgrp(*no);

dcl-pi P946;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'

dcl-ds T1192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1192 FROM T1192 LIMIT 1;

theCharVar = 'Hello from P946';
dsply theCharVar;
callp localProc();
P785();
P246();
P557();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P946 in the procedure';
end-proc;