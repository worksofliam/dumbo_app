**free

ctl-opt dftactgrp(*no);

dcl-pi P3314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P2218.rpgleinc'
/copy 'qrpgleref/P2222.rpgleinc'

dcl-ds T1299 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1299 FROM T1299 LIMIT 1;

theCharVar = 'Hello from P3314';
dsply theCharVar;
callp localProc();
P40();
P2218();
P2222();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3314 in the procedure';
end-proc;