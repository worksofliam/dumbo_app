**free

ctl-opt dftactgrp(*no);

dcl-pi P415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P356.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds T100 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T100 FROM T100 LIMIT 1;

theCharVar = 'Hello from P415';
dsply theCharVar;
callp localProc();
P356();
P91();
P5();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P415 in the procedure';
end-proc;