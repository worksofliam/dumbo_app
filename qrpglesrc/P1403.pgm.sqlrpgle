**free

ctl-opt dftactgrp(*no);

dcl-pi P1403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'
/copy 'qrpgleref/P1323.rpgleinc'

dcl-ds T727 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T727 FROM T727 LIMIT 1;

theCharVar = 'Hello from P1403';
dsply theCharVar;
callp localProc();
P231();
P868();
P1323();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1403 in the procedure';
end-proc;