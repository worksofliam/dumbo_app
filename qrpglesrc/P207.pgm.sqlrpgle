**free

ctl-opt dftactgrp(*no);

dcl-pi P207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds T314 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T314 FROM T314 LIMIT 1;

theCharVar = 'Hello from P207';
dsply theCharVar;
callp localProc();
P68();
P57();
P92();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P207 in the procedure';
end-proc;