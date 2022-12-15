**free

ctl-opt dftactgrp(*no);

dcl-pi P1082;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P786.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'

dcl-ds T576 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T576 FROM T576 LIMIT 1;

theCharVar = 'Hello from P1082';
dsply theCharVar;
callp localProc();
P557();
P786();
P622();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1082 in the procedure';
end-proc;