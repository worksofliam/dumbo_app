**free

ctl-opt dftactgrp(*no);

dcl-pi P1298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P517.rpgleinc'
/copy 'qrpgleref/P1139.rpgleinc'

dcl-ds T865 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T865 FROM T865 LIMIT 1;

theCharVar = 'Hello from P1298';
dsply theCharVar;
callp localProc();
P704();
P517();
P1139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1298 in the procedure';
end-proc;