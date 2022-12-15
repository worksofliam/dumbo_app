**free

ctl-opt dftactgrp(*no);

dcl-pi P1280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P1023.rpgleinc'
/copy 'qrpgleref/P1110.rpgleinc'

dcl-ds T1019 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1019 FROM T1019 LIMIT 1;

theCharVar = 'Hello from P1280';
dsply theCharVar;
callp localProc();
P89();
P1023();
P1110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1280 in the procedure';
end-proc;