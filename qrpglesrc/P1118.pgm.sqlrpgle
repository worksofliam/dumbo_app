**free

ctl-opt dftactgrp(*no);

dcl-pi P1118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'

dcl-ds T121 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T121 FROM T121 LIMIT 1;

theCharVar = 'Hello from P1118';
dsply theCharVar;
callp localProc();
P616();
P578();
P451();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1118 in the procedure';
end-proc;