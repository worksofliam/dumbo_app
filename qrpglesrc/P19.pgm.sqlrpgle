**free

ctl-opt dftactgrp(*no);

dcl-pi P19;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds T250 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T250 FROM T250 LIMIT 1;

theCharVar = 'Hello from P19';
dsply theCharVar;
callp localProc();
P9();
P12();
P8();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P19 in the procedure';
end-proc;