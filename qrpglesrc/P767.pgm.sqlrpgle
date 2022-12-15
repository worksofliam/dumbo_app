**free

ctl-opt dftactgrp(*no);

dcl-pi P767;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'

dcl-ds T1004 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1004 FROM T1004 LIMIT 1;

theCharVar = 'Hello from P767';
dsply theCharVar;
callp localProc();
P81();
P458();
P534();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P767 in the procedure';
end-proc;