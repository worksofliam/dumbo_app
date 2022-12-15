**free

ctl-opt dftactgrp(*no);

dcl-pi P756;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'

dcl-ds T176 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T176 FROM T176 LIMIT 1;

theCharVar = 'Hello from P756';
dsply theCharVar;
callp localProc();
P488();
P57();
P711();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P756 in the procedure';
end-proc;