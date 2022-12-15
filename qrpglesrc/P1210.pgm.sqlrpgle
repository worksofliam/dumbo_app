**free

ctl-opt dftactgrp(*no);

dcl-pi P1210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P453.rpgleinc'
/copy 'qrpgleref/P897.rpgleinc'
/copy 'qrpgleref/P1193.rpgleinc'

dcl-ds T927 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T927 FROM T927 LIMIT 1;

theCharVar = 'Hello from P1210';
dsply theCharVar;
callp localProc();
P453();
P897();
P1193();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1210 in the procedure';
end-proc;