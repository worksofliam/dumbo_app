**free

ctl-opt dftactgrp(*no);

dcl-pi P826;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds T373 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T373 FROM T373 LIMIT 1;

theCharVar = 'Hello from P826';
dsply theCharVar;
callp localProc();
P45();
P78();
P127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P826 in the procedure';
end-proc;