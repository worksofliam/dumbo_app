**free

ctl-opt dftactgrp(*no);

dcl-pi P539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'

dcl-ds T109 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T109 FROM T109 LIMIT 1;

theCharVar = 'Hello from P539';
dsply theCharVar;
callp localProc();
P7();
P22();
P287();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P539 in the procedure';
end-proc;