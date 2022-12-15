**free

ctl-opt dftactgrp(*no);

dcl-pi P378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds T270 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T270 FROM T270 LIMIT 1;

theCharVar = 'Hello from P378';
dsply theCharVar;
callp localProc();
P221();
P243();
P342();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P378 in the procedure';
end-proc;