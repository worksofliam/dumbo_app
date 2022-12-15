**free

ctl-opt dftactgrp(*no);

dcl-pi P697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P684.rpgleinc'
/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'

dcl-ds T76 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T76 FROM T76 LIMIT 1;

theCharVar = 'Hello from P697';
dsply theCharVar;
callp localProc();
P684();
P510();
P153();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P697 in the procedure';
end-proc;