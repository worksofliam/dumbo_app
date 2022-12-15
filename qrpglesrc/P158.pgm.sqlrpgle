**free

ctl-opt dftactgrp(*no);

dcl-pi P158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds T270 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T270 FROM T270 LIMIT 1;

theCharVar = 'Hello from P158';
dsply theCharVar;
callp localProc();
P86();
P27();
P74();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P158 in the procedure';
end-proc;