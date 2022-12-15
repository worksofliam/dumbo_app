**free

ctl-opt dftactgrp(*no);

dcl-pi P1038;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P974.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'

dcl-ds T862 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T862 FROM T862 LIMIT 1;

theCharVar = 'Hello from P1038';
dsply theCharVar;
callp localProc();
P578();
P974();
P471();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1038 in the procedure';
end-proc;