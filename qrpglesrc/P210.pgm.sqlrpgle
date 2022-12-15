**free

ctl-opt dftactgrp(*no);

dcl-pi P210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds T1459 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1459 FROM T1459 LIMIT 1;

theCharVar = 'Hello from P210';
dsply theCharVar;
callp localProc();
P90();
P116();
P102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P210 in the procedure';
end-proc;