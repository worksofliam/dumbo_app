**free

ctl-opt dftactgrp(*no);

dcl-pi P595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds T1325 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1325 FROM T1325 LIMIT 1;

theCharVar = 'Hello from P595';
dsply theCharVar;
callp localProc();
P590();
P58();
P361();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P595 in the procedure';
end-proc;