**free

ctl-opt dftactgrp(*no);

dcl-pi P1933;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1823.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'

dcl-ds T88 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T88 FROM T88 LIMIT 1;

theCharVar = 'Hello from P1933';
dsply theCharVar;
callp localProc();
P1823();
P1042();
P756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1933 in the procedure';
end-proc;