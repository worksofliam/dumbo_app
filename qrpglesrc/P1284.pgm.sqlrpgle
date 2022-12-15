**free

ctl-opt dftactgrp(*no);

dcl-pi P1284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P510.rpgleinc'

dcl-ds T276 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T276 FROM T276 LIMIT 1;

theCharVar = 'Hello from P1284';
dsply theCharVar;
callp localProc();
P251();
P43();
P510();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1284 in the procedure';
end-proc;