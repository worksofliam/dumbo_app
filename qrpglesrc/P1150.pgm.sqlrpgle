**free

ctl-opt dftactgrp(*no);

dcl-pi P1150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P550.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'

dcl-ds T1142 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1142 FROM T1142 LIMIT 1;

theCharVar = 'Hello from P1150';
dsply theCharVar;
callp localProc();
P635();
P550();
P548();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1150 in the procedure';
end-proc;