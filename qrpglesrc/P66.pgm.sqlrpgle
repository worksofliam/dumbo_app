**free

ctl-opt dftactgrp(*no);

dcl-pi P66;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds T478 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T478 FROM T478 LIMIT 1;

theCharVar = 'Hello from P66';
dsply theCharVar;
callp localProc();
P3();
P12();
P44();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P66 in the procedure';
end-proc;