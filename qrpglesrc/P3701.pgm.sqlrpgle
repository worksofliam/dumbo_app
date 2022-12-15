**free

ctl-opt dftactgrp(*no);

dcl-pi P3701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P492.rpgleinc'
/copy 'qrpgleref/P1852.rpgleinc'
/copy 'qrpgleref/P905.rpgleinc'

dcl-ds T566 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T566 FROM T566 LIMIT 1;

theCharVar = 'Hello from P3701';
dsply theCharVar;
callp localProc();
P492();
P1852();
P905();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3701 in the procedure';
end-proc;