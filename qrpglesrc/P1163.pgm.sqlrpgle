**free

ctl-opt dftactgrp(*no);

dcl-pi P1163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P1149.rpgleinc'
/copy 'qrpgleref/P1053.rpgleinc'

dcl-ds T24 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T24 FROM T24 LIMIT 1;

theCharVar = 'Hello from P1163';
dsply theCharVar;
callp localProc();
P106();
P1149();
P1053();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1163 in the procedure';
end-proc;