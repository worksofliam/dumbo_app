**free

ctl-opt dftactgrp(*no);

dcl-pi P546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'

dcl-ds T167 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T167 FROM T167 LIMIT 1;

theCharVar = 'Hello from P546';
dsply theCharVar;
callp localProc();
P91();
P89();
P444();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P546 in the procedure';
end-proc;