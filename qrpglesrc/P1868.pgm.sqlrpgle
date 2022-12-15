**free

ctl-opt dftactgrp(*no);

dcl-pi P1868;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P550.rpgleinc'

dcl-ds T1314 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1314 FROM T1314 LIMIT 1;

theCharVar = 'Hello from P1868';
dsply theCharVar;
callp localProc();
P54();
P353();
P550();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1868 in the procedure';
end-proc;