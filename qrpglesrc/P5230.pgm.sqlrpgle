**free

ctl-opt dftactgrp(*no);

dcl-pi P5230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3385.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P3647.rpgleinc'

dcl-ds T483 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T483 FROM T483 LIMIT 1;

theCharVar = 'Hello from P5230';
dsply theCharVar;
callp localProc();
P3385();
P848();
P3647();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5230 in the procedure';
end-proc;