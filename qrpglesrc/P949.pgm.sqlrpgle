**free

ctl-opt dftactgrp(*no);

dcl-pi P949;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P938.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'

dcl-ds T538 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T538 FROM T538 LIMIT 1;

theCharVar = 'Hello from P949';
dsply theCharVar;
callp localProc();
P201();
P938();
P506();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P949 in the procedure';
end-proc;