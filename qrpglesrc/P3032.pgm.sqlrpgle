**free

ctl-opt dftactgrp(*no);

dcl-pi P3032;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'
/copy 'qrpgleref/P2128.rpgleinc'

dcl-ds T1771 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1771 FROM T1771 LIMIT 1;

theCharVar = 'Hello from P3032';
dsply theCharVar;
callp localProc();
P290();
P732();
P2128();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3032 in the procedure';
end-proc;