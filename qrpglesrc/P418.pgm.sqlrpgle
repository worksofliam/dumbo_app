**free

ctl-opt dftactgrp(*no);

dcl-pi P418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds T649 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T649 FROM T649 LIMIT 1;

theCharVar = 'Hello from P418';
dsply theCharVar;
callp localProc();
P86();
P400();
P383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P418 in the procedure';
end-proc;