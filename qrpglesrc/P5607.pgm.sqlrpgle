**free

ctl-opt dftactgrp(*no);

dcl-pi P5607;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4709.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P4561.rpgleinc'

dcl-ds T1179 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1179 FROM T1179 LIMIT 1;

theCharVar = 'Hello from P5607';
dsply theCharVar;
callp localProc();
P4709();
P284();
P4561();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5607 in the procedure';
end-proc;