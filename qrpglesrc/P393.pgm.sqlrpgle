**free

ctl-opt dftactgrp(*no);

dcl-pi P393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'

dcl-ds T916 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T916 FROM T916 LIMIT 1;

theCharVar = 'Hello from P393';
dsply theCharVar;
callp localProc();
P200();
P304();
P153();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P393 in the procedure';
end-proc;