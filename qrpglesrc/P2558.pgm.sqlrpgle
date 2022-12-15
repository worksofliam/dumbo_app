**free

ctl-opt dftactgrp(*no);

dcl-pi P2558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P1770.rpgleinc'
/copy 'qrpgleref/P1330.rpgleinc'

dcl-ds T674 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T674 FROM T674 LIMIT 1;

theCharVar = 'Hello from P2558';
dsply theCharVar;
callp localProc();
P375();
P1770();
P1330();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2558 in the procedure';
end-proc;