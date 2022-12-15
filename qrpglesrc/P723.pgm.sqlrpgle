**free

ctl-opt dftactgrp(*no);

dcl-pi P723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'

dcl-ds T129 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T129 FROM T129 LIMIT 1;

theCharVar = 'Hello from P723';
dsply theCharVar;
callp localProc();
P631();
P129();
P480();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P723 in the procedure';
end-proc;