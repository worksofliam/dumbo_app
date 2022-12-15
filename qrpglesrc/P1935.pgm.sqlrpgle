**free

ctl-opt dftactgrp(*no);

dcl-pi P1935;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1887.rpgleinc'
/copy 'qrpgleref/P1107.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'

dcl-ds T262 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T262 FROM T262 LIMIT 1;

theCharVar = 'Hello from P1935';
dsply theCharVar;
callp localProc();
P1887();
P1107();
P418();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1935 in the procedure';
end-proc;