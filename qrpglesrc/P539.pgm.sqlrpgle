**free

ctl-opt dftactgrp(*no);

dcl-pi P539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'

dcl-ds T157 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T157 FROM T157 LIMIT 1;

theCharVar = 'Hello from P539';
dsply theCharVar;
callp localProc();
P294();
P141();
P287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P539 in the procedure';
end-proc;