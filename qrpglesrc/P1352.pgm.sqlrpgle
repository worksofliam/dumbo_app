**free

ctl-opt dftactgrp(*no);

dcl-pi P1352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P448.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'

dcl-ds T150 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T150 FROM T150 LIMIT 1;

theCharVar = 'Hello from P1352';
dsply theCharVar;
callp localProc();
P448();
P534();
P472();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1352 in the procedure';
end-proc;